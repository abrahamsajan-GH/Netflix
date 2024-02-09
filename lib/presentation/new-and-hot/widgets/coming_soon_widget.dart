import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String backdropPath;
  final String title;
  final String releaseDate;
  final String overview;
  final String genres;
  const ComingSoonWidget({
    super.key,
    required this.id,
    required this.month,
    required this.day,
    required this.backdropPath,
    required this.title,
    required this.releaseDate,
    required this.overview,
    required this.genres,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 60,
          height: 435,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                month,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: greyClr),
              ),
              Text(day,
                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          ),
        ),
        SizedBox(
          width: size.width - 75,
          height: 435,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 160,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    backdropPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              h10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 165,
                        child: Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.notifications_none,
                              size: 28,
                              color: whiteClr,
                            ),
                            Text(
                              "Remind me",
                              style: TextStyle(color: greyClr, fontSize: 10),
                            )
                          ],
                        ),
                        w10,
                        Column(
                          children: [
                            Icon(
                              Icons.info_outline,
                              size: 28,
                              color: whiteClr,
                            ),
                            Text(
                              "Info",
                              style: TextStyle(color: greyClr, fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              h20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Coming on $releaseDate',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  h10,
                  Text(
                    overview,
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: greyClr, fontSize: 12),
                  ),
                  h5,
                  Text(
                    genres,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
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
