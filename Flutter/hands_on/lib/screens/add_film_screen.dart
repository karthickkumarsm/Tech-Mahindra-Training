import 'package:flutter/material.dart';
import '../models/film.dart';
import '../database/database_helper.dart';

class AddFilmScreen extends StatefulWidget {
  const AddFilmScreen({super.key});

  @override
  _AddFilmScreenState createState() => _AddFilmScreenState();
}

class _AddFilmScreenState extends State<AddFilmScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _director = '';
  String? _imageUrl;
  final _dbHelper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Film'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Film Title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a film title';
                  }
                  return null;
                },
                onSaved: (value) {
                  _title = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Director'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the director\'s name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _director = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Image URL'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an image URL';
                  }
                  return null;
                },
                onSaved: (value) {
                  _imageUrl = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    final film = Film(
                      title: _title,
                      director: _director,
                      imagePath: _imageUrl, // Save the image URL
                    );
                    _dbHelper.addFilm(film);
                    Navigator.of(context).pop();
                  }
                },
                child: Text('Add Film'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
