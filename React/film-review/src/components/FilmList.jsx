import React, { useEffect, useState } from 'react';
import axios from 'axios';
import FilmItem from './FilmItem';

const FilmList = () => {
  const [films, setFilms] = useState([]);

  useEffect(() => {
    axios.get('http://localhost:4500/films')
      .then(response => setFilms(response.data))
      .catch(error => console.error('Error fetching films:', error));
  }, []);

  return (
    <div className="container">
      <h2>Film Collection</h2>
      <div className="list-group">
        {films.map(film => (
          <div className="list-group-item" key={film.id}>
            <FilmItem film={film} />
          </div>
        ))}
      </div>
    </div>
  );
};

export default FilmList;
