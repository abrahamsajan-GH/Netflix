import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/home/widgets/top10widget.dart';
import 'package:netflix_clone/presentation/widgets/common_title.dart';

class TopTen extends StatelessWidget {
  const TopTen({
    super.key,
    required this.size, required this.posterImages,
  });

  final Size size;
  final List<String> posterImages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CommonTitle(title: "Top 10 Movies in India Today"),
          LimitedBox(
            maxHeight: size.width * 0.42,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                posterImages.length,
                (index) => Top10Widget(
                  size: size,
                  index: index + 1,
                  imageUrl: posterImages[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
