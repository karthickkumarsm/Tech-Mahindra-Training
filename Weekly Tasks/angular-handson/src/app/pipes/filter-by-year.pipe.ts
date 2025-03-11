import { Pipe, PipeTransform } from '@angular/core';
import { Film } from '../models/film';

@Pipe({
  name: 'filterByYear'
})
export class FilterByYearPipe implements PipeTransform {

  transform(films: Film[], year: number | null): Film[] {
    if (!year) {
      return films;
    }
    return films.filter(film => film.year === year);
  }

}
