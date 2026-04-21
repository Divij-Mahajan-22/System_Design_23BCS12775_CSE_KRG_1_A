from flask import Blueprint, render_template, request, redirect, url_for, flash, jsonify
from flask_login import login_user, logout_user, login_required, current_user
from datetime import datetime,timedelta
try:
    from sqlalchemy import func
except ImportError:
    func = None

# Import models after creating blueprints to avoid circular imports
from models import db, User, ParkingLot, ParkingSpot, Reservation

# Create blueprintsrints
main = Blueprint('main', __name__)
auth = Blueprint('auth', __name__)
admin = Blueprint('admin', __name__)
user = Blueprint('user', __name__)
api = Blueprint('api', __name__)

# Main routes
@main.route('/')
def index():
    return render_template('index.html')

# Authentication routes
@auth.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        user_type = request.form.get('user_type', 'user')
        
        if user_type == 'admin':
            user = User.query.filter_by(username=username, is_admin=True).first()
        else:
            user = User.query.filter_by(username=username, is_admin=False).first()
        
        if user and user.check_password(password):
            login_user(user)
            if user.is_admin:
                return redirect(url_for('admin.dashboard'))
            else:
                return redirect(url_for('user.dashboard'))
        else:
            flash('Invalid username or password', 'error')
    
    return render_template('login.html')

@auth.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        password = request.form['password']
        phone = request.form.get('phone', '')
        
        # Check if user already exists
        if User.query.filter_by(username=username).first():
            flash('Username already exists', 'error')
            return render_template('register.html')
        
        if User.query.filter_by(email=email).first():
            flash('Email already exists', 'error')
            return render_template('register.html')
        
        # Create new user
        user = User(username=username, email=email, phone=phone)
        user.set_password(password)
        db.session.add(user)
        db.session.commit()
        
        flash('Registration successful! Please login.', 'success')
        return redirect(url_for('auth.login'))
    
    return render_template('register.html')

@auth.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('main.index'))

# Admin routes
@admin.route('/dashboard')
@login_required
def dashboard():
    if not current_user.is_admin:
        flash('Access denied', 'error')
        return redirect(url_for('main.index'))
    
    # Get statistics
    total_lots = ParkingLot.query.count()
    total_spots = ParkingSpot.query.count()
    occupied_spots = ParkingSpot.query.filter_by(status='O').count()
    available_spots = ParkingSpot.query.filter_by(status='A').count()
    total_users = User.query.filter_by(is_admin=False).count()
    active_reservations = Reservation.query.filter_by(leaving_timestamp=None).count()
    
    # Get recent reservations
    recent_reservations = Reservation.query.order_by(Reservation.parking_timestamp.desc()).limit(5).all()
    
    # Get parking lots with stats
    parking_lots = ParkingLot.query.all()
    
    return render_template('admin_dashboard.html', 
                         total_lots=total_lots,
                         total_spots=total_spots,
                         occupied_spots=occupied_spots,
                         available_spots=available_spots,
                         total_users=total_users,
                         active_reservations=active_reservations,
                         recent_reservations=recent_reservations,
                         parking_lots=parking_lots)

@admin.route('/parking-lots')
@login_required
def parking_lots():
    if not current_user.is_admin:
        flash('Access denied', 'error')
        return redirect(url_for('main.index'))
    
    lots = ParkingLot.query.all()
    return render_template('admin_parking_lots.html', lots=lots)

@admin.route('/create-lot', methods=['GET', 'POST'])
@login_required
def create_lot():
    if not current_user.is_admin:
        flash('Access denied', 'error')
        return redirect(url_for('main.index'))
    
    if request.method == 'POST':
        name = request.form['name']
        address = request.form['address']
        pin_code = request.form['pin_code']
        price = float(request.form['price'])
        max_spots = int(request.form['max_spots'])
        
        # Create parking lot
        lot = ParkingLot(
            prime_location_name=name,
            address=address,
            pin_code=pin_code,
            price_per_hour=price,
            maximum_number_of_spots=max_spots
        )
        db.session.add(lot)
        db.session.flush()  # Get the lot ID
        
        # Create parking spots
        for i in range(1, max_spots + 1):
            spot = ParkingSpot(
                lot_id=lot.id,
                spot_number=f"S{i:03d}"
            )
            db.session.add(spot)
        
        db.session.commit()
        flash('Parking lot created successfully!', 'success')
        return redirect(url_for('admin.parking_lots'))
    
    return render_template('admin_create_lot.html')

@admin.route('/edit-lot/<int:lot_id>', methods=['GET', 'POST'])
@login_required
def edit_lot(lot_id):
    if not current_user.is_admin:
        flash('Access denied', 'error')
        return redirect(url_for('main.index'))
    
    lot = ParkingLot.query.get_or_404(lot_id)
    
    if request.method == 'POST':
        lot.prime_location_name = request.form['name']
        lot.address = request.form['address']
        lot.pin_code = request.form['pin_code']
        lot.price_per_hour = float(request.form['price'])
        new_max_spots = int(request.form['max_spots'])
        
        current_spots = len(lot.parking_spots)
        
        if new_max_spots > current_spots:
            # Add new spots
            for i in range(current_spots + 1, new_max_spots + 1):
                spot = ParkingSpot(
                    lot_id=lot.id,
                    spot_number=f"S{i:03d}"
                )
                db.session.add(spot)
        elif new_max_spots < current_spots:
            # Check if any excess spots are occupied
            excess_count = current_spots - new_max_spots
            occupied_in_excess = ParkingSpot.query.filter_by(lot_id=lot.id).order_by(ParkingSpot.id.desc()).limit(excess_count).filter_by(status='O').count()
            
            if occupied_in_excess > 0:
                flash('Cannot reduce spots - some excess spots are occupied', 'error')
                return render_template('admin_edit_lot.html', lot=lot)
            
            # Remove excess spots (starting from the highest numbered)
            spots_to_remove = ParkingSpot.query.filter_by(lot_id=lot.id).order_by(ParkingSpot.id.desc()).limit(excess_count).all()
            
            for spot in spots_to_remove:
                db.session.delete(spot)
        
        lot.maximum_number_of_spots = new_max_spots
        db.session.commit()
        flash('Parking lot updated successfully!', 'success')
        return redirect(url_for('admin.parking_lots'))
    
    return render_template('admin_edit_lot.html', lot=lot)

@admin.route('/delete-lot/<int:lot_id>')
@login_required
def delete_lot(lot_id):
    if not current_user.is_admin:
        flash('Access denied', 'error')
        return redirect(url_for('main.index'))
    
    lot = ParkingLot.query.get_or_404(lot_id)
    
    # Check if any spots are occupied
    occupied_spots = ParkingSpot.query.filter_by(lot_id=lot.id, status='O').count()
    if occupied_spots > 0:
        flash('Cannot delete lot - some spots are occupied', 'error')
        return redirect(url_for('admin.parking_lots'))
    
    db.session.delete(lot)
    db.session.commit()
    flash('Parking lot deleted successfully!', 'success')
    return redirect(url_for('admin.parking_lots'))

@admin.route('/users')
@login_required
def users():
    if not current_user.is_admin:
        flash('Access denied', 'error')
        return redirect(url_for('main.index'))

    users = User.query.filter_by(is_admin=False).all()
    
    total_users = len(users)
    users_with_bookings = [u for u in users if u.reservations]
    active_users = [u for u in users if any(r.leaving_timestamp is None for r in u.reservations)]
    recent_users = [
        u for u in users
        if u.created_at and u.created_at >= datetime.utcnow() - timedelta(days=7)
    ]

    return render_template(
        'admin_users.html',
        users=users,
        total_users=total_users,
        users_with_bookings=len(users_with_bookings),
        active_user_count=len(active_users),
        recent_user_count=len(recent_users)
    )

@admin.route('/reservations')
@login_required
def reservations():
    if not current_user.is_admin:
        flash('Access denied', 'error')
        return redirect(url_for('main.index'))
    
    reservations = Reservation.query.order_by(Reservation.parking_timestamp.desc()).all()
    return render_template('admin_reservations.html', reservations=reservations)

# User routes
@user.route('/dashboard')
@login_required
def dashboard():
    if current_user.is_admin:
        return redirect(url_for('admin.dashboard'))
    
    # Get user's current and past reservations
    current_reservation = Reservation.query.filter_by(
        user_id=current_user.id, 
        leaving_timestamp=None
    ).first()
    
    past_reservations = Reservation.query.filter_by(
        user_id=current_user.id
    ).filter(Reservation.leaving_timestamp.isnot(None)).order_by(
        Reservation.leaving_timestamp.desc()
    ).limit(5).all()
    
    # Get available parking lots
    available_lots = []
    for lot in ParkingLot.query.all():
        available_count = lot.get_available_spots_count()
        if available_count > 0:
            available_lots.append({
                'lot': lot,
                'available_spots': available_count
            })
    
    return render_template('user_dashboard.html',
                         current_reservation=current_reservation,
                         past_reservations=past_reservations,
                         available_lots=available_lots)

@user.route('/book-spot/<int:lot_id>', methods=['GET', 'POST'])
@login_required
def book_spot(lot_id):
    if current_user.is_admin:
        flash('Access denied', 'error')
        return redirect(url_for('main.index'))
    
    # Check if user already has an active reservation
    existing_reservation = Reservation.query.filter_by(
        user_id=current_user.id,
        leaving_timestamp=None
    ).first()
    
    if existing_reservation:
        flash('You already have an active reservation', 'error')
        return redirect(url_for('user.dashboard'))
    
    lot = ParkingLot.query.get_or_404(lot_id)
    
    if request.method == 'POST':
        vehicle_number = request.form['vehicle_number']
        
        # Find first available spot
        available_spot = ParkingSpot.query.filter_by(
            lot_id=lot.id,
            status='A'
        ).first()
        
        if not available_spot:
            flash('No available spots in this lot', 'error')
            return redirect(url_for('user.dashboard'))
        
        # Create reservation
        reservation = Reservation(
            spot_id=available_spot.id,
            user_id=current_user.id,
            vehicle_number=vehicle_number
        )
        
        # Update spot status
        available_spot.status = 'O'
        
        db.session.add(reservation)
        db.session.commit()
        
        flash('Parking spot booked successfully!', 'success')
        return redirect(url_for('user.dashboard'))
    
    available_spots = lot.get_available_spots_count()
    
    if available_spots == 0:
        flash('No available spots in this lot', 'error')
        return redirect(url_for('user.dashboard'))
    
    return render_template('user_book_spot.html', lot=lot, available_spots=available_spots)

@user.route('/release-spot/<int:reservation_id>')
@login_required
def release_spot(reservation_id):
    if current_user.is_admin:
        flash('Access denied', 'error')
        return redirect(url_for('main.index'))
    
    reservation = Reservation.query.get_or_404(reservation_id)
    
    if reservation.user_id != current_user.id:
        flash('Access denied', 'error')
        return redirect(url_for('user.dashboard'))
    
    if reservation.leaving_timestamp:
        flash('Spot already released', 'error')
        return redirect(url_for('user.dashboard'))
    
    # Update reservation
    reservation.leaving_timestamp = datetime.utcnow()
    reservation.parking_cost = reservation.calculate_cost()
    
    # Update spot status
    reservation.spot.status = 'A'
    
    db.session.commit()
    
    flash(f'Spot released successfully! Total cost: ₹{reservation.parking_cost}', 'success')
    return redirect(url_for('user.dashboard'))

# API routes
@api.route('/parking-lots')
def get_parking_lots():
    lots = ParkingLot.query.all()
    return jsonify([{
        'id': lot.id,
        'name': lot.prime_location_name,
        'address': lot.address,
        'pin_code': lot.pin_code,
        'price_per_hour': lot.price_per_hour,
        'total_spots': lot.maximum_number_of_spots,
        'available_spots': lot.get_available_spots_count(),
        'occupied_spots': lot.get_occupied_spots_count()
    } for lot in lots])

@api.route('/parking-spots/<int:lot_id>')
def get_parking_spots(lot_id):
    spots = ParkingSpot.query.filter_by(lot_id=lot_id).all()
    return jsonify([{
        'id': spot.id,
        'spot_number': spot.spot_number,
        'status': spot.status,
        'current_reservation': {
            'user': spot.get_current_reservation().user.username,
            'vehicle_number': spot.get_current_reservation().vehicle_number,
            'parking_time': spot.get_current_reservation().parking_timestamp.isoformat()
        } if spot.get_current_reservation() and spot.status == 'O' else None
    } for spot in spots])

@api.route('/stats')
def get_stats():
    return jsonify({
        'total_lots': ParkingLot.query.count(),
        'total_spots': ParkingSpot.query.count(),
        'available_spots': ParkingSpot.query.filter_by(status='A').count(),
        'occupied_spots': ParkingSpot.query.filter_by(status='O').count(),
        'total_users': User.query.filter_by(is_admin=False).count(),
        'active_reservations': Reservation.query.filter_by(leaving_timestamp=None).count()
    })