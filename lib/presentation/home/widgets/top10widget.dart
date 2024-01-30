import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/home/screen_home.dart';

class Top10Widget extends StatelessWidget {
  const Top10Widget({super.key, required this.size, required this.index});

  final int index;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 15,
          bottom: -35,
          child: Text(
            "$index",
            style: TextStyle(
              fontSize: 130,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1.5
                ..color = Colors.white,
              letterSpacing: -30,
              shadows: const [
                Shadow(
                  blurRadius: 30.0,
                  color: Color.fromARGB(102, 255, 255, 255),
                  offset: Offset(0, 0),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width * 0.26,
                // height: size.width * 0.42,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(randomImg), fit: BoxFit.cover),
                    borderRadius: br5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
