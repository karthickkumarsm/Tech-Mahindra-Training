import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { FilmListComponent } from './film-list/film-list.component';
import { AddFilmComponent } from './add-film/add-film.component';

const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'films', component: FilmListComponent },
  { path: 'add-film', component: AddFilmComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
