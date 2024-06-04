import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../components/custom_card.dart';

class MovieCarouselPage extends StatefulWidget {
  final List<String> images;

  MovieCarouselPage({required this.images});

  @override
  _MovieCarouselPageState createState() => _MovieCarouselPageState();
}

class _MovieCarouselPageState extends State<MovieCarouselPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carrossel de Imagens')),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
              enlargeCenterPage: true,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: widget.images.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return CustomCard(
                    active: _currentIndex == widget.images.indexOf(image),
                    child: Image.asset(image, fit: BoxFit.cover),
                  );
                },
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.images.map((url) {
              int index = widget.images.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.blue : Colors.grey,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
