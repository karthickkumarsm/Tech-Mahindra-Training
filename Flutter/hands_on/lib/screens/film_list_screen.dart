import 'package:flutter/material.dart';
import '../models/film.dart';
import '../database/database_helper.dart';
import 'add_film_screen.dart';

class FilmListScreen extends StatefulWidget {
  const FilmListScreen({super.key});

  @override
  _FilmListScreenState createState() => _FilmListScreenState();
}

class _FilmListScreenState extends State<FilmListScreen> {
  List<Film> _films = [];
  final _dbHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    _loadFilms();
  }

  Future<void> _loadFilms() async {
    final films = await _dbHelper.getFilms();
    setState(() {
      _films = films;
    });
  }

  Future<void> _deleteFilm(int id) async {
    await _dbHelper.deleteFilm(id);
    _loadFilms(); // Reload the films after deletion
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Film Collection'),
      ),
      body: ListView.builder(
        itemCount: _films.length,
        itemBuilder: (context, index) {
          final film = _films[index];
          return ListTile(
            leading: film.imagePath != null
                ? Image.network(
                    film.imagePath!,
                    width: 50,
                    height: 50,
                    errorBuilder: (context, error, stackTrace) =>
                        Icon(Icons.broken_image), // Handle broken URLs
                  )
                : Icon(Icons.movie), // Placeholder for missing images
            title: Text(film.title),
            subtitle: Text(film.director),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Delete Film'),
                    content: Text('Are you sure you want to delete this film?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop(); // Close dialog
                        },
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop(); // Close dialog
                          _deleteFilm(film.id!); // Delete the film
                        },
                        child: Text('Delete'),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AddFilmScreen()),
          );
          _loadFilms();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
