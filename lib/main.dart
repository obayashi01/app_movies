import 'package:app_movie/pages/movie_list.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filmes App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MovieListPage(),
    );
  }
}
