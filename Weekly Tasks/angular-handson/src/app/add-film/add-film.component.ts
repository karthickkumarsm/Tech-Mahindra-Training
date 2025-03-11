import { Component } from '@angular/core';
import { FilmService } from '../services/film.service';
import { Film } from '../models/film';

@Component({
  selector: 'app-add-film',
  templateUrl: './add-film.component.html',
  styleUrls: ['./add-film.component.css']
})
export class AddFilmComponent {
  title: string;
  director: string;
  year: number;
  imageUrl: string;
  rating: number;

  constructor(private filmService: FilmService) {
    this.title = '';
    this.director = '';
    this.year = NaN;
    this.imageUrl = '';
    this.rating = NaN;
  }

  onSubmit(): void {
    const film: Film = { id: Date.now(), title: this.title, director: this.director, year: this.year, imageUrl: this.imageUrl, rating: this.rating };
    this.filmService.addFilm(film).subscribe();
    this.title = '';
    this.director = '';
    this.year = NaN;
    this.imageUrl = '';
    this.rating = NaN;

  }
}
