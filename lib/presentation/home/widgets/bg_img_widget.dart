import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';

class BgImageBtns extends StatelessWidget {
  const BgImageBtns({
    super.key,
    required this.bgImg,
  });

  final String bgImg;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                    image: AssetImage(bgImg), fit: BoxFit.cover),
                border: Border.all(color: greyClr, width: 0.8)),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow_sharp,
                  color: blackClr,
                  size: 32,
                ),
                label: const Text(
                  'Play',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(horizontal: 24.0),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: whiteClr,
                  size: 32,
                ),
                label: const Text(
                  'My List',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: whiteClr,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(36, 255, 255, 255)),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(horizontal: 24.0),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
