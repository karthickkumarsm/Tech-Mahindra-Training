import { Component, Input } from '@angular/core';
import { Film } from '../models/film';

@Component({
  selector: 'app-film-item',
  templateUrl: './film-item.component.html',
  styleUrls: ['./film-item.component.css']
})
export class FilmItemComponent {
  @Input() film: Film;

  constructor() {
    this.film = { id: 0, title: '', director: '', year: NaN, imageUrl: '' , rating: NaN};
  }
}
