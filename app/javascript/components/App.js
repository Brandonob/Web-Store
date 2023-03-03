import React from 'react'
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import Home from './Home/Home'
import Login from './Admin/Login/Login'


export default function App() {
  return (
    <Router>
        <Routes>
          <Route exact path="/" element={<Home />}/>
          <Route exact path="/admin/login" element={<Login />}/>
        </Routes>
    </Router>
  )
}


