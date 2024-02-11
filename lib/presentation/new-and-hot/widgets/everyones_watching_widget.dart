import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  final String id;
  final String backdropPath;
  final String title;
  final String overview;
  final List<String> genres;
  const EveryonesWatchingWidget({
    super.key,
    required this.id,
    required this.backdropPath,
    required this.title,
    required this.overview,
    required this.genres,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 420,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: double.infinity,
            height: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                backdropPath,
                fit: BoxFit.cover,
                loadingBuilder:
                    (BuildContext _, Widget child, ImageChunkEvent? progress) {
                  if (progress == null) {
                    return child;
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(redClr)),
                    );
                  }
                },
                errorBuilder: (BuildContext _, Object a, StackTrace? trace) {
                  return const Center(
                      child: Icon(
                    Icons.signal_wifi_connected_no_internet_4,
                    color: whiteClr,
                  ));
                },
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
                    width: 170,
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.share_outlined,
                          size: 28,
                          color: whiteClr,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(
                            color: greyClr,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    w30,
                    Column(
                      children: [
                        Icon(
                          Icons.add_sharp,
                          size: 28,
                          color: whiteClr,
                        ),
                        Text(
                          "My List",
                          style: TextStyle(
                            color: greyClr,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    w30,
                    Column(
                      children: [
                        Icon(
                          Icons.play_arrow_sharp,
                          size: 28,
                          color: whiteClr,
                        ),
                        Text(
                          "Play",
                          style: TextStyle(
                            color: greyClr,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
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
            genres.join(" • "),
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )
        ]));
  }
}
