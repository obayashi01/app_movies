import 'package:flutter/material.dart';

import '../movie.dart';
import '../movie_list_item.dart';
import 'movie_detail.dart';


class MovieListPage extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      title: 'Filmes de Romance',
      description: 'Confira os melhores filmes de Romance, e se emocione com cada história!',
      images: ['images/titanic.jpg', 'images/thenotebook.jpg'],
      type: MovieType.Romance,
    ),
    Movie(
      title: 'Filmes de Animação',
      description: 'Confira as melhores animações e se divirta com a familia toda!',
      images: ['images/cars.jpg', 'images/nemo.jpg'],
      type: MovieType.Animacao,
    ),
    // Adicione mais filmes conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Filmes')),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieListItem(
            movie: movies[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetailPage(movie: movies[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
