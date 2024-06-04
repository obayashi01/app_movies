import 'package:app_movie/pages/movie_carousel.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../movie.dart';


class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  MovieDetailPage({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(movie.description, style: TextStyle(fontSize: 18.0)),
          ),
          Spacer(),
          BottomButton(
            buttonTitle: 'Ver Imagens',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieCarouselPage(images: movie.images),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
