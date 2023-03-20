// client/src/components/App.js
import { BrowserRouter, Routes, Route } from "react-router-dom"
import Home from "./Home"
import Login from "./Login"

function App() {


  return (
    <BrowserRouter>
      <div className="App">
        <Routes>
          <Route path="/" element={<Login />}/>
          <Route path="/home" element={<Home />}/>
        </Routes>
      </div>
    </BrowserRouter>
  )
}

export default App