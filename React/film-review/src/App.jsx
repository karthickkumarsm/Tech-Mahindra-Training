import React from 'react';
import { Route, Routes } from 'react-router-dom';
import Header from './components/Header';
import Home from './components/Home';
import FilmList from './components/FilmList';
import AddFilm from './components/AddFilm';

function App() {
  return (
    <div>
      <Header />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/films" element={<FilmList />} />
        <Route path="/add-film" element={<AddFilm />} />
      </Routes>
    </div>
  );
}

export default App;
