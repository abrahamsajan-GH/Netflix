import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_title.dart';

const imageUrl =
    "https://media.themoviedb.org/t/p/w250_and_h141_face/sxskOU71CO8LaNX2LOtjYFUtKv7.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchPageTitle(title: 'Top Searches',),
        h10,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopSearchesList(),
              separatorBuilder: (ctx, index) => h20,
              itemCount: 20),
        ),
      ],
    );
  }
}



class TopSearchesList extends StatelessWidget {
  const TopSearchesList({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.30,
          height: 70,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.cover),
              borderRadius: br8),
        ),
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          color: whiteClr,
          size: 50,
        )
      ],
    );
  }
}
