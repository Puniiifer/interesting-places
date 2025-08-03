class Place {
  final int id;
  final String name;
  final String description;
  final String category;
  final String imageUrl;
  final double? distance;
  final bool isFavorite;

  Place({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.imageUrl,
    this.distance,
    this.isFavorite = false,
  });
}