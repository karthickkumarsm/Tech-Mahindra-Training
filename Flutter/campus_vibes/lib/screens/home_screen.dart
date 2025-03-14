import 'package:campus_vibes/models/event.dart';
import 'package:flutter/material.dart';
import '../widgets/event_card.dart';
import '../services/database.dart';
import 'add_event_screen.dart';
import 'event_detail_screen.dart';
import '../l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  final DatabaseService _databaseService = DatabaseService();
  final void Function(Locale) onLocaleChange;

  HomeScreen({required this.onLocaleChange});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.translate('app_title'),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          DropdownButton<Locale>(
            value: Localizations.localeOf(context),
            icon: Icon(Icons.language, color: Colors.white),
            underline: SizedBox(),
            items: [
              DropdownMenuItem(
                value: Locale('en', ''),
                child: Text(
                  AppLocalizations.of(context)!.translate('English'),
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              DropdownMenuItem(
                value: Locale('ta', ''),
                child: Text(
                  AppLocalizations.of(context)!.translate('Tamil'),
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ],
            onChanged: (Locale? locale) {
              if (locale != null) {
                onLocaleChange(locale);
              }
            },
          ),
        ],
        backgroundColor: Colors.teal[700],
      ),
      body: Container(
        color: Colors.grey[200],
        child: StreamBuilder<List<CampusEvent>>(
          stream: _databaseService.events,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator(color: Colors.teal));
            }
            final events = snapshot.data!;
            return ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: events.length,
              itemBuilder: (context, index) {
                return EventCard(
                  event: events[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventDetailScreen(event: events[index]),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddEventScreen(onLocaleChange: onLocaleChange)),
          );
        },
        backgroundColor: Colors.teal[700],
        child: Icon(Icons.add, color: Colors.white),
        tooltip: AppLocalizations.of(context)!.translate('add_event'),
      ),
    );
  }
}