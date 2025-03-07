import { Pipe, PipeTransform } from '@angular/core';
import { Film } from '../models/film';

@Pipe({
  name: 'filterByRating'
})
export class FilterByRatingPipe implements PipeTransform {

  transform(films: Film[], rating: number | null): Film[] {
    console.log('Filtering by rating:', rating);
    console.log('Films:', films);
    if (rating === null || rating === undefined) {
      console.log('No rating provided, returning all films');
      return films;
    }
    const filteredFilms = films.filter(film => film.rating === rating);
    console.log('Filtered films:', filteredFilms);
    return filteredFilms;
  }

}
