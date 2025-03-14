import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/event.dart';

class DatabaseService {
  final CollectionReference _eventsCollection = FirebaseFirestore.instance.collection('events');

  Stream<List<CampusEvent>> get events {
    return _eventsCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return CampusEvent.fromMap(doc.data() as Map<String, dynamic>, doc.id);
      }).toList();
    });
  }

  Future<void> addEvent(CampusEvent event) async {
    await _eventsCollection.add(event.toMap());
  }
}