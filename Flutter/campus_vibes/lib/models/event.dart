class CampusEvent {
  final String id;
  final String title;
  final String description;
  final String location;
  final DateTime dateTime;
  final String imageUrl;
  final String userId; // New field to track the uploader

  CampusEvent({
    required this.id,
    required this.title,
    required this.description,
    required this.dateTime,
    required this.location,
    required this.imageUrl,
    required this.userId,
  });

  factory CampusEvent.fromMap(Map<String, dynamic> data, String id) {
    return CampusEvent(
      id: id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      location: data['location'] ?? '',
      dateTime: DateTime.parse(data['dateTime']),
      imageUrl: data['imageUrl'] ?? '',
      userId: data['userId'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'location': location,
      'dateTime': dateTime.toIso8601String(),
      'imageUrl': imageUrl,
      'userId': userId,
    };
  }
}