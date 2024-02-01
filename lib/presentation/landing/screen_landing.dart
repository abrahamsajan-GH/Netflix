import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/downloads/screen_downloads.dart';
import 'package:netflix_clone/presentation/games/screen_games.dart';
import 'package:netflix_clone/presentation/home/screen_home.dart';
import 'package:netflix_clone/presentation/landing/widgets/bottom_nav.dart';
// import 'package:netflix_clone/presentation/my_netflix/screen_mynetflix.dart';
import 'package:netflix_clone/presentation/new-and-hot/screen_newandhot.dart';
// import 'package:netflix_clone/presentation/search/screen_search.dart';

class ScreenLanding extends StatelessWidget {
  ScreenLanding({super.key});

  final pages = [
    const ScreenHome(),
    const ScreenGames(),
    const ScreenNewAndHot(),
    ScreenDownloads(),
    // const ScreenMyNetflix(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, child) => pages[index],
        ),
      ),
      bottomNavigationBar: const BottomNavWidgets(),
    );
  }
}
