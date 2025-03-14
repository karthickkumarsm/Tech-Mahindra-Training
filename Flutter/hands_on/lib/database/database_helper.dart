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
    version: 2, // Increment version to 2
    onCreate: (db, version) async {
      await db.execute(
        'CREATE TABLE films(id INTEGER PRIMARY KEY, title TEXT, director TEXT, imagePath TEXT)',
      );
    },
    onUpgrade: (db, oldVersion, newVersion) async {
      if (oldVersion < 2) {
        await db.execute('ALTER TABLE films ADD COLUMN imagePath TEXT');
      }
    },
  );
}

Future<void> deleteFilm(int id) async {
  final db = await database;
  await db.delete(
    'films',
    where: 'id = ?',
    whereArgs: [id],
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
        imagePath: maps[i]['imagePath'],
      );
    });
  }

  Future<void> addFilm(Film film) async {
    final db = await database;
    await db.insert('films', film.toMap());
  }
}
