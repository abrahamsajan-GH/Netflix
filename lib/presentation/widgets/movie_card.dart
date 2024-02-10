import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.size,
    required this.imageUrl,
  });
  final String imageUrl;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.26,
        // height: size.width * 0.42,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
            borderRadius: br5),
      ),
    );
  }
}
