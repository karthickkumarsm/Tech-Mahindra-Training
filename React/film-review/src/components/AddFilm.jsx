import React, { useState } from 'react';
import axios from 'axios';

const AddFilm = () => {
  const [formData, setFormData] = useState({
    title: '',
    director: '',
    year: '',
    imageUrl: '',
    rating: ''
  });

  const handleChange = e => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value
    });
  };

  const handleSubmit = e => {
    e.preventDefault();
    axios.post('http://localhost:4500/films', formData)
      .then(response => {
        console.log('Film added:', response.data);
        alert('Film added successfully!');
        setFormData({ title: '', director: '', year: '', imageUrl: '', rating: '' });
      })
      .catch(error => console.error('Error adding film:', error));
  };

return (
    <div className="container">
        <h2>Add New Film</h2>
        <form onSubmit={handleSubmit}>
            <div className="form-group">
                <label htmlFor="title">Title</label>
                <input
                    id="title"
                    className="form-control"
                    name="title"
                    value={formData.title}
                    onChange={handleChange}
                    required
                />
            </div>
            <div className="form-group">
                <label htmlFor="director">Director</label>
                <input
                    id="director"
                    className="form-control"
                    name="director"
                    value={formData.director}
                    onChange={handleChange}
                    required
                />
            </div>
            <div className="form-group">
                <label htmlFor="year">Year</label>
                <input
                    id="year"
                    className="form-control"
                    type="number"
                    name="year"
                    value={formData.year}
                    onChange={handleChange}
                    required
                />
            </div>
            <div className="form-group">
                <label htmlFor="imageUrl">Image URL</label>
                <input
                    id="imageUrl"
                    className="form-control"
                    name="imageUrl"
                    value={formData.imageUrl}
                    onChange={handleChange}
                    required
                />
            </div>
            <div className="form-group">
                <label htmlFor="rating">Rating</label>
                <select
                    id="rating"
                    className="form-control"
                    name="rating"
                    value={formData.rating}
                    onChange={handleChange}
                    required
                >
                    <option value="">Select Rating</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </div>
            <button type="submit" className="btn btn-primary">Add Film</button>
        </form>
    </div>
);
};

export default AddFilm;
