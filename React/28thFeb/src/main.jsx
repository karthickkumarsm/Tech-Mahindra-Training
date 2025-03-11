import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import ErrorBoundary from './ErrorBoundary.jsx'
import ABComponentForError from './ABComponentForError.jsx'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <App />
    <ErrorBoundary>
        <ABComponentForError />
    </ErrorBoundary>
  </StrictMode>,
)
