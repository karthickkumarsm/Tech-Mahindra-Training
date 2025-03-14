class Film {
  final int? id;
  final String title;
  final String director;
  final String? imagePath; // Field to store the image URL

  Film({this.id, required this.title, required this.director, this.imagePath});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'director': director,
      'imagePath': imagePath,
    };
  }

  static Film fromMap(Map<String, dynamic> map) {
    return Film(
      id: map['id'],
      title: map['title'],
      director: map['director'],
      imagePath: map['imagePath'],
    );
  }
}
