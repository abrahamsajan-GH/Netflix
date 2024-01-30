import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_title.dart';

const imageUrl =
    "https://media.themoviedb.org/t/p/w220_and_h330_face/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg";

class SearchResultsWidget extends StatelessWidget {
  const SearchResultsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchPageTitle(title: 'Movies & TV'),
        h10,
        Expanded(
            child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 15,
                crossAxisCount: 3,
                childAspectRatio: 1 / 1.4,
                shrinkWrap: true,
                children: List.generate(20, (index) {
                  return const SearchCard();
                })))
      ],
    );
  }
}

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: br8,
        image: const DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
