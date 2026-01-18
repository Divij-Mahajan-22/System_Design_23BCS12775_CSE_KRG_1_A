import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

function App() {
  const [count, setCount] = useState(0)

  let arr = ["alice", "bob", "charlie"];
  let changed = arr.map(item=>item.toUpperCase()).filter(item=>item.startsWith("A"));
  console.log(changed);

  const users = [
    {name:"John", age:25},
    {name:"Alex", age:35},
    {name:"Dikshay", age:1},
    {name:"Tarun", age:0},
  ];

  let ans = users.filter(item=>item.age>18).map(item=>item.name);
  console.log("Ans is ", ans);

  const cart = [
    {name:"Laptop", price:60000},
    {name:"Mouse", price:1200},
    {name:"Keyboard", price:1800}
  ]

  let ans3 = cart.reduce((acc, item) => acc+item.price,0);
  console.log("The total bill is ", ans3);

  const people = [
    {first:"Amrit", last:"Dey"},
    {first:"Yashwanth", last:"Kanaboina"},
    {first:"Sudhanshu", last:"Choudhary"}
  ]

  let ans4 = people.map(item=>item.first+" "+item.last);
  console.log("The full names are : ", ans4);

  const products = [
    {name:"iPhone", price:1200, inStock:true},
    {name:"macBook", price:1800, inStock:false},
    {name:"AirPods", price:250, inStock:true},
    {name:"iPad Pro", price:1100, inStock:true},
  ]

  const ans5 = products.filter(item=>item.price>1100 && item.inStock);
  console.log("Filtererd products : ", ans5);

  const students = [
    {name:"Riya", score:92},
    {name:"Aman", score:78},
    {name:"Sneha", score:88},
    {name:"Karan", score:65},
    {name:"Priya", score:95},
  ]

  const ans6 = students.filter(item=>item.score>80);
  const sum = ans6.reduce((acc, item)=>acc+item.score,0);
  const avg = sum/ans6.length;
  console.log("Ans6 = ", ans6, ". The avg is " , avg);

  const items = [
    {name:"Smartphone", price:32000},
    {name:"Charges", price:1200},
    {name:"Headphones", price:4500},
    {name:"Power Bank", price:1800}
  ]

  let ans7 = items.filter(item=>item.price>1500).reduce((a,c)=>a+c.price,0)*0.8;
  console.log(ans7)

  const products2 = [
    {brand:"Samsung",model:"S23",price:72000,quantity:5},
    {brand:"Apple",model:"iPhone14",price:89000,quantity:2},
    {brand:"OnePlus",model:"Nord3",price:32000,quantity:8}
  ]

  const ans8 = products2.map(item=>item.brand + " " + item.model);
  const total = products2.reduce((ac,item)=>ac+(item.price*item.quantity),0)
  console.log(ans8, total);

  
  return (
    <>
      <div>
        <a href="https://vite.dev" target="_blank">
          <img src={viteLogo} className="logo" alt="Vite logo" />
        </a>
        <a href="https://react.dev" target="_blank">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>
      <h1>Vite + React abc</h1>
      <div className="card">
        <button onClick={() => setCount((count) => count + 1)}>
          count is {count}
        </button>
        <p>
          Edit <code>src/App.tsx</code> and save to test HMR
        </p>
      </div>
      <p className="read-the-docs">
        Click on the Vite and React logos to learn more
      </p>
    </>
  )
}

export default App
