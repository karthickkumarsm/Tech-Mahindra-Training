import 'package:flutter/material.dart';
import 'package:campus_vibes/models/event.dart';
import 'package:intl/intl.dart';
import '../l10n/app_localizations.dart';

class EventDetailScreen extends StatelessWidget {
  final CampusEvent event;

  EventDetailScreen({required this.event});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.title, style: Theme.of(context).textTheme.titleLarge),
        backgroundColor: Colors.teal[700],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.translate('description'),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            Text(event.description, style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: 16),
            Text(
              AppLocalizations.of(context)!.translate('location'),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            Text(event.location, style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.translate('Date & Time'),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            Text(DateFormat('dd-MM-yyyy HH:mm').format(event.dateTime), style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}