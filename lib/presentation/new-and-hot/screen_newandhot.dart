import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/new-and-hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new-and-hot/widgets/everyones_watching_widget.dart';
import 'package:netflix_clone/presentation/widgets/topbar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const FlexibleSpaceBar(
              title: TopBarWidget(title: 'New & Hot'),
              titlePadding: EdgeInsets.only(bottom: 12.0),
              centerTitle: false,
            ),
            bottom: TabBar(
                tabAlignment: TabAlignment.start,
                indicatorSize: TabBarIndicatorSize.tab,
                dragStartBehavior: DragStartBehavior.start,
                dividerColor: Colors.transparent,
                isScrollable: true,
                labelColor: blackClr,
                unselectedLabelColor: whiteClr,
                indicator: BoxDecoration(
                  color: whiteClr,
                  borderRadius: br30,
                ),
                tabs: const [
                  Tab(
                    text: "🍿 Coming Soon",
                  ),
                  Tab(
                    text: "🔥 Everyone's watching",
                  ),
                  // Tab(
                  //   text: "🎮 Games",
                  // ),
                  // Tab(
                  //   text: "🔟 Top 10 Movies",
                  // ),
                ],
                labelStyle: const TextStyle(
                  color: whiteClr,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'montserrat',
                  letterSpacing: 0.5,
                )),
          ),
          body: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
            child: TabBarView(
              children: [
                _comingSoon(),
                _everyonesWatching(),
              ],
            ),
          )),
    );
  }

  Widget _comingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
    );
  }

  Widget _everyonesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) =>
          const EveryonesWatchingWidget(),
    );
  }
}
