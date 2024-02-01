import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/home/widgets/bg_img_widget.dart';
import 'package:netflix_clone/presentation/home/widgets/text_border.dart';
import 'package:netflix_clone/presentation/home/widgets/topten.dart';
import 'package:netflix_clone/presentation/widgets/home_card.dart';

const imageUrl = "assets/images/riverdale.webp";
const randomImg = "assets/images/spiderman.webp";
ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  final bgImg = "assets/images/marvels.jpg";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 100.0,
            floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: AnimatedOpacity(
                opacity: scrollNotifier.value ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 400),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            height: 40,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextBorder(
                            children: Text(
                              "TV Shows",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          TextBorder(
                            children: Text(
                              "Movies",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          TextBorder(
                            children: Row(
                              children: [
                                Text(
                                  "Categories",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    BgImageBtns(bgImg: bgImg),
                    HomeCard(
                      size: size,
                      cardCategory: 'Top Searches',
                    ),
                    HomeCard(
                      size: size,
                      cardCategory: 'Trending Now',
                    ),
                    TopTen(size: size),
                    HomeCard(
                      size: size,
                      cardCategory: '30-Minute Laughs',
                    ),
                    HomeCard(
                      size: size,
                      cardCategory: 'Ensemble TV Shows',
                    ),
                    HomeCard(
                      size: size,
                      cardCategory: 'New Releases',
                    ),
                    HomeCard(
                      size: size,
                      cardCategory: 'Indian Movies',
                    ),
                    HomeCard(
                      size: size,
                      cardCategory: 'US TV Shows',
                    ),
                    HomeCard(
                      size: size,
                      cardCategory: 'Award Winning TV Shows',
                    ),
                    HomeCard(
                      size: size,
                      cardCategory: 'Tamil Movies & TV',
                    ),
                    HomeCard(
                      size: size,
                      cardCategory: 'Korean TV Shows',
                    ),
                    HomeCard(
                      size: size,
                      cardCategory: 'Casual Viewing',
                    ),
                    HomeCard(
                      size: size,
                      cardCategory: 'Popular on Netflix',
                    ),
                  ],
                );
              },
              childCount: 1, // Set the number of children to 1
            ),
          ),
        ],
      ),
    );
  }
}
