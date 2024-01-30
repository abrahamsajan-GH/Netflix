import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/home/widgets/top10widget.dart';
import 'package:netflix_clone/presentation/widgets/common_title.dart';

class TopTen extends StatelessWidget {
  const TopTen({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CommonTitle(title: "Top 10 Movies in India Today"),
        LimitedBox(
          maxHeight: size.width * 0.42,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Top10Widget(size: size, index: index + 1),
            ),
          ),
        )
      ],
    );
  }
}