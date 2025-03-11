import React from 'react';
import { Link } from 'react-router-dom';

const Header = () => {
  return (
    <nav className="navbar navbar-expand-lg navbar-light bg-light">
      <Link className="navbar-brand" to="/">Film Collection</Link>
      <div className="collapse navbar-collapse" id="navbarNav">
        <ul className="navbar-nav">
          <li className="nav-item">
            <Link className="nav-link" to="/">Home</Link>
          </li>
          <li className="nav-item">
            <Link className="nav-link" to="/films">Films</Link>
          </li>
          <li className="nav-item">
            <Link className="nav-link" to="/add-film">Add Film</Link>
          </li>
        </ul>
      </div>
    </nav>
  );
};

export default Header;
