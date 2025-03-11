import { NgModule } from '@angular/core';
import { BrowserModule, provideClientHydration } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { AddFilmComponent } from './add-film/add-film.component';
import { FilmListComponent } from './film-list/film-list.component';
import { FilmItemComponent } from './film-item/film-item.component';
import { RouterModule } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { FilterByYearPipe } from './pipes/filter-by-year.pipe';
import { FilterByRatingPipe } from './pipes/filter-by-rating.pipe';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    AddFilmComponent,
    FilmListComponent,
    FilmItemComponent,
    FilterByYearPipe,
    FilterByRatingPipe,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    RouterModule,
    FormsModule
  ],
  providers: [
    provideClientHydration()
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
