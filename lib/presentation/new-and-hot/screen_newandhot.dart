import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/widgets/topbar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                  Tab(
                    text: "🎮 Games",
                  ),
                  Tab(
                    text: "🔟 Top 10 Movies",
                  ),
                ],
                labelStyle: const TextStyle(
                    color: whiteClr,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'montserrat')),
          ),
          body: TabBarView(
            children: [
              _comingSoon(context),
              _everyonesWatching(),
            ],
          )),
    );
  }

  Widget _comingSoon(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 12),
      children: [
        Row(
          children: [
            const SizedBox(
              width: 65,
              height: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "FEB",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: greyClr),
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
              width: size.width - 65,
              height: 450,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 180,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/images/nsn.webp",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "COLEEN ROONEY:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "THE REAL WAGATHA STORY",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ],
                      ),
                      Row()
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _everyonesWatching() {
    return const SizedBox();
  }
}
