import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../l10n/app_localizations.dart';

class UserSetupScreen extends StatefulWidget {
  final void Function(Locale) onLocaleChange;

  UserSetupScreen({required this.onLocaleChange});

  @override
  _UserSetupScreenState createState() => _UserSetupScreenState();
}

class _UserSetupScreenState extends State<UserSetupScreen> {
  final _nameController = TextEditingController();
  final _locationController = TextEditingController();
  final _collegeController = TextEditingController();
  final _profilePicUrlController = TextEditingController();

  void _saveProfile() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'name': _nameController.text,
        'location': _locationController.text,
        'college': _collegeController.text,
        'profilePicUrl': _profilePicUrlController.text,
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen(onLocaleChange: widget.onLocaleChange)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.translate('Setup Profile'),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.teal[700],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Colors.grey[200],
        child: ListView(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.translate('Name'),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.translate('location'),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _collegeController,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.translate('college'),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _saveProfile,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal[700]),
              child: Text(
                AppLocalizations.of(context)!.translate('save'),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}