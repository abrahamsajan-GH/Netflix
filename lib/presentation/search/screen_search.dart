import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_idle.dart';
// import 'package:netflix_clone/presentation/search/widgets/search_results.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                  backgroundColor: greyClr.withOpacity(0.3),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: greyClr,
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.xmark_circle_fill,
                    color: greyClr,
                  ),
                  style: const TextStyle(color: whiteClr)),
              h10,
              const Expanded(child: SearchIdleWidget()),
              // const Expanded(child: SearchResultsWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
