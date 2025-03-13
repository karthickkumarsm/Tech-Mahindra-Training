class Film {
  final int? id;
  final String title;
  final String director;

  Film({this.id, required this.title, required this.director});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'director': director,
    };
  }
}
