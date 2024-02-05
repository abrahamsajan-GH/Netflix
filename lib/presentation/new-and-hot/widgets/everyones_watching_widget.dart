import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 400,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: double.infinity,
            height: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                "assets/images/parking.webp",
                fit: BoxFit.cover,
              ),
            ),
          ),
          h20,
          const Row(
            children: [
              Row(
                children: [
                  Text(
                    "PARKING",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -2),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.share_outlined,
                          size: 30,
                          color: whiteClr,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(
                            color: greyClr,
                            fontSize: 11,
                          ),
                        )
                      ],
                    ),
                    w30,
                    Column(
                      children: [
                        Icon(
                          Icons.add_sharp,
                          size: 30,
                          color: whiteClr,
                        ),
                        Text(
                          "My List",
                          style: TextStyle(
                            color: greyClr,
                            fontSize: 11,
                          ),
                        )
                      ],
                    ),
                    w30,
                    Column(
                      children: [
                        Icon(
                          Icons.play_arrow_sharp,
                          size: 30,
                          color: whiteClr,
                        ),
                        Text(
                          "Play",
                          style: TextStyle(
                            color: greyClr,
                            fontSize: 11,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          h20,
          const Text(
            "A clash over a shared space transforms two men from diverse backgrounds into aggressors. Will ego triumph, or can shared intentions lead to resolution",
            style: TextStyle(color: greyClr, fontSize: 14),
          ),
          h20,
          const Text(
            "Action • Drama • Betrayal • Coming-of-Age",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          )
        ]));
  }
}
