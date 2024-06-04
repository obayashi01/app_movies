import 'package:app_movie/movie.dart';
import 'package:flutter/material.dart';

class MovieListItem extends StatelessWidget {
  final Movie movie;
  final VoidCallback onTap;

  MovieListItem({required this.movie, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color textColor;

    switch (movie.type) {
      case MovieType.Romance:
        textColor = Colors.red;
        break;
      case MovieType.Animacao:
        textColor = Colors.blue;
        break;
      case MovieType.Comedy:
        textColor = Colors.green;
        break;
    }

    return ListTile(
      title: Text(movie.title, style: TextStyle(color: textColor)),
      subtitle: Text(movie.description),
      onTap: onTap,
    );
  }
}
