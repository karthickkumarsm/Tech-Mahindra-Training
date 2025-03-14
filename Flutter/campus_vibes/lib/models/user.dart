class User {
  final String id;
  final String name;
  final String location;
  final String college;
  final String? profilePicUrl;

  User({
    required this.id,
    required this.name,
    required this.location,
    required this.college,
    this.profilePicUrl,
  });

  factory User.fromMap(Map<String, dynamic> data, String id) {
    return User(
      id: id,
      name: data['name'] ?? '',
      location: data['location'] ?? '',
      college: data['college'] ?? '',
      profilePicUrl: data['profilePicUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'location': location,
      'college': college,
      'profilePicUrl': profilePicUrl,
    };
  }
}