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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Film Collection'),
      ),
      body: ListView.builder(
        itemCount: _films.length,
        itemBuilder: (context, index) {
          final film = _films[index];
          return ListTile(
            title: Text(film.title),
            subtitle: Text(film.director),
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
        child: const Icon(Icons.add),
      ),
    );
  }
}
