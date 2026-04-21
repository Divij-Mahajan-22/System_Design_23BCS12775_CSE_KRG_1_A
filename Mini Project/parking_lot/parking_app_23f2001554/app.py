from flask import Flask
from flask_login import LoginManager
from models import db, User
from controllers import main, auth, admin, user, api
import os

def create_app():
    app = Flask(__name__)
    

    app.config['SECRET_KEY'] = 'your-secret-key-here' 
    app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///parking_app.db'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

    db.init_app(app)
    

    login_manager = LoginManager()
    login_manager.init_app(app)
    login_manager.login_view = 'auth.login'
    login_manager.login_message = 'Please log in to access this page.'
    login_manager.login_message_category = 'info'
    
    @login_manager.user_loader
    def load_user(user_id):
        return User.query.get(int(user_id))
 
    app.register_blueprint(main)
    app.register_blueprint(auth, url_prefix='/auth')
    app.register_blueprint(admin, url_prefix='/admin')
    app.register_blueprint(user, url_prefix='/user')
    app.register_blueprint(api, url_prefix='/api')
    
    return app

def init_database(app):
    """Initialize database with tables and admin user"""
    with app.app_context():
 
        db.create_all()
        
  
        admin_user = User.query.filter_by(username='admin').first()
        if not admin_user:
            admin_user = User(
                username='admin',
                email='admin@parking.com',
                is_admin=True,
                phone='9999999999'
            )
            admin_user.set_password('admin123') 
            db.session.add(admin_user)
            db.session.commit()
            print("Admin user created - Username: admin, Password: admin123")
        
        print("Database initialized successfully!")

if __name__ == '__main__':
    app = create_app()
    
 
    init_database(app)
   
    app.run(debug=True, host='0.0.0.0', port=5000)