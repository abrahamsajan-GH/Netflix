import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/home/home_bloc.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/bg_img_widget.dart';
import 'package:netflix_clone/presentation/home/widgets/text_border.dart';
import 'package:netflix_clone/presentation/home/widgets/topten.dart';
import 'package:netflix_clone/presentation/search/screen_search.dart';
import 'package:netflix_clone/presentation/widgets/home_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  final bgImg = "assets/images/marvels.jpg";

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context)
          .add(const HomeEvent.getHomeScreenData());
    });
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(redClr),
              ),
            );
          } else if (state.isError) {
            return const Center(
              child: Text(
                "We're having trouble loading data!",
                style: TextStyle(color: whiteClr),
              ),
            );
          } else {
            final topSearches = state.topSearchesList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList();

            final topSearchesMixed = state.topSearchesList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList()
              ..shuffle();

            final trending = state.trendingNowList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList();

            final trendingMixed = state.trendingNowList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList()
              ..shuffle();

            final tvShows = state.tvShowsList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList();

            final tvShowsMixed = state.tvShowsList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList()
              ..shuffle();

            final newReleases = state.newReleasesList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList();

            final newReleasesMixed = state.newReleasesList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList()
              ..shuffle();

            final casualViewing = state.casualViewingList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList();

            final casualViewingMixed = state.casualViewingList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList()
              ..shuffle();

            final popularOnes = state.popularOnesList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList();

            final popularOnesMixed = state.popularOnesList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList()
              ..shuffle();

            final indianMovies = state.indianMoviesList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList();

            final indianMoviesMixed = state.indianMoviesList.map((e) {
              return '$apiImgUrl${e.posterPath}';
            }).toList()
              ..shuffle();

            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: blackClr.withOpacity(0.6),
                  expandedHeight: 90.0,
                  floating: true,
                  pinned: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: AnimatedOpacity(
                      opacity: scrollNotifier.value ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 500),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 6),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/logo.png",
                                  height: 35,
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ScreenSearch())),
                                    icon: const Icon(
                                      Icons.search,
                                      size: 35,
                                      color: whiteClr,
                                    ))
                              ],
                            ),
                            h5,
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextBorder(
                                  children: Text(
                                    "TV Shows",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                w10,
                                TextBorder(
                                  children: Text(
                                    "Movies",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                w10,
                                TextBorder(
                                  children: Row(
                                    children: [
                                      Text(
                                        "Categories",
                                        style: TextStyle(
                                          fontSize: 13,
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
                            posterImages: topSearches.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'Trending Now',
                            posterImages: trending.take(10).toList(),
                          ),
                          TopTen(
                            size: size,
                            posterImages: trendingMixed.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'Ensemble TV Shows',
                            posterImages: indianMoviesMixed.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'New Releases',
                            posterImages: newReleases.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'Watch It Again',
                            posterImages: popularOnesMixed.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'US TV Shows',
                            posterImages: popularOnes.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'Award Winning TV Shows',
                            posterImages: tvShows.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'Watch for a While',
                            posterImages: casualViewing.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'Exciting US Movies',
                            posterImages: trendingMixed.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'Casual Viewing',
                            posterImages: tvShowsMixed.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'Popular on Netflix',
                            posterImages: newReleasesMixed.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'Top Picks for You',
                            posterImages: indianMovies.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'Teen TV Shows',
                            posterImages: topSearchesMixed.take(10).toList(),
                          ),
                          HomeCard(
                            size: size,
                            cardCategory: 'Released in the Past Year',
                            posterImages: casualViewingMixed.take(10).toList(),
                          ),
                        ],
                      );
                    },
                    childCount: 1, // Set the number of children to 1
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
