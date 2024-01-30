import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/common_title.dart';
import 'package:netflix_clone/presentation/widgets/movie_card.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.size,
    required this.cardCategory,
  });
  final String cardCategory;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonTitle(title: cardCategory),
          LimitedBox(
            maxHeight: size.width * 0.42,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: List.generate(10, (index) => MovieCard(size: size)),
            ),
          )
        ],
      ),
    );
  }
}
