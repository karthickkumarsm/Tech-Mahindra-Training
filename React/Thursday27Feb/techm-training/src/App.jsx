import { StrictMode, useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import ReactJS from './React'
import Nested1 from './Nested1'
import Nested2 from './Nested2'
import Nested3 from './Nested3'
import Nested4 from './Nested4'
import ABComponent2 from './unique'

function App() {

  return (
    <>
      <StrictMode>
      <ReactJS/>
      <Nested1/>
      <Nested2/>
      <Nested3/>
      <Nested4/>
      <ABComponent2/>
      </StrictMode>
     </>
  )
}

export default App
