import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import comp1 from './comp1.jsx'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <App />
    <comp1 />
  </StrictMode>,
)
