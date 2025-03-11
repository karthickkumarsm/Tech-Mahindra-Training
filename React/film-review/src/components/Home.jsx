import React from 'react';

const Home = () => {
  return (
    <div className="container mt-5">
      <div className="hero-section text-center">
        <h1 className="display-4">Welcome to Film Collection</h1>
        <p className="lead">Discover and manage your favorite films easily.</p>
      </div>
      <div id="carouselExampleIndicators" className="carousel slide" data-bs-ride="carousel">
        <div className="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" className="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div className="carousel-inner">
          <div className="carousel-item active">
            <img src="https://th.bing.com/th/id/OIP.UCjFsmemc6dcOqJ9LQxQFgHaE8?w=253&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" className="d-block w-100" alt="Film 1" />
          </div>
          <div className="carousel-item">
            <img src="https://th.bing.com/th/id/OIP.UCjFsmemc6dcOqJ9LQxQFgHaE8?w=253&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" className="d-block w-100" alt="Film 2" />
          </div>
          <div className="carousel-item">
            <img src="https://th.bing.com/th/id/OIP.UCjFsmemc6dcOqJ9LQxQFgHaE8?w=253&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" className="d-block w-100" alt="Film 3" />
          </div>
        </div>
        <button className="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span className="carousel-control-prev-icon" aria-hidden="true"></span>
          <span className="visually-hidden">Previous</span>
        </button>
        <button className="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span className="carousel-control-next-icon" aria-hidden="true"></span>
          <span className="visually-hidden">Next</span>
        </button>
      </div>
    </div>
  );
};

export default Home;

