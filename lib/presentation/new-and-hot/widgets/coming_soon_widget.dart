import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 60,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: greyClr),
              ),
              Text("22",
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          ),
        ),
        SizedBox(
          width: size.width - 85,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 160,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "assets/images/nsn.webp",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              h10,
              const Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "COLEEN ROONEY",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -3),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.notifications_none,
                              size: 25,
                              color: whiteClr,
                            ),
                            Text(
                              "Remind me",
                              style: TextStyle(color: greyClr, fontSize: 11),
                            )
                          ],
                        ),
                        w5,
                        Column(
                          children: [
                            Icon(
                              Icons.info_outline,
                              size: 25,
                              color: whiteClr,
                            ),
                            Text(
                              "Info",
                              style: TextStyle(color: greyClr, fontSize: 11),
                            )
                          ],
                        ),
                        w5,
                      ],
                    ),
                  )
                ],
              ),
              h20,
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Coming on 22 February",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  h10,
                  Text(
                    "Coleen Rooney is a regal presence in, hopefully, the last word on the Wag wars; four mystified cops aren't alone in Netflix's exhausting new crime thriller; and in the final series of Breeders, Martin Freeman becomes a zen master.",
                    style: TextStyle(color: greyClr, fontSize: 12),
                  ),
                  h5,
                  Text(
                    "Adventure • Epic World • SuperPowers • US",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
