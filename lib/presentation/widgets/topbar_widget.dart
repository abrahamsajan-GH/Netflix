import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/search/screen_search.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
                color: whiteClr, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ScreenSearch())),
            icon: const Icon(
              Icons.search,
              color: whiteClr,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
