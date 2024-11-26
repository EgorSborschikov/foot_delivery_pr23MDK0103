class Package {
  final int id;
  final String name;
  final String status;
  final double latitude;
  final double longitude;

  Package({
    required this.id,
    required this.name,
    required this.status,
    required this.latitude,
    required this.longitude,
  });

  factory Package.fromJson(Map<String, dynamic> json) {
    return Package(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}
