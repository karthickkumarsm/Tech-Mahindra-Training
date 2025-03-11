import React from 'react';

const FilmItem = ({ film }) => {
  return (
    <div className="card mb-3">
      <div className="row g-0">
        <div className="col-md-4">
          <img src={film.imageUrl} className="img-fluid rounded-start" alt={film.title} />
        </div>
        <div className="col-md-8">
          <div className="card-body">
            <h5 className="card-title">{film.title}</h5>
            <p className="card-text">Directed by: {film.director}</p>
            <p className="card-text">Year: {film.year}</p>
            <p className="card-text">Rating: {film.rating}</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default FilmItem;
