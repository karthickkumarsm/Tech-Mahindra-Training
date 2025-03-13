import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/film.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDb();
    return _db!;
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'films.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE films(id INTEGER PRIMARY KEY, title TEXT, director TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<List<Film>> getFilms() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('films');
    return List.generate(maps.length, (i) {
      return Film(
        id: maps[i]['id'],
        title: maps[i]['title'],
        director: maps[i]['director'],
      );
    });
  }

  Future<void> addFilm(Film film) async {
    final db = await database;
    await db.insert('films', film.toMap());
  }
}
