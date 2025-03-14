import 'package:flutter/material.dart';
import 'screens/film_list_screen.dart';

void main() {
  runApp(FilmCollectionApp());
}

class FilmCollectionApp extends StatelessWidget {
  const FilmCollectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Film Collection App',
      home: FilmListScreen(),
    );
  }
}
