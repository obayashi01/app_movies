class Movie {
  final String title;
  final String description;
  final List<String> images;
  final MovieType type;

  Movie({
    required this.title,
    required this.description,
    required this.images,
    required this.type,
  });
}

enum MovieType { Romance, Animacao, Comedy }
