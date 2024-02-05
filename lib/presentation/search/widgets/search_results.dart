import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_title.dart';

class SearchResultsWidget extends StatelessWidget {
  const SearchResultsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchPageTitle(title: 'Movies & TV'),
        h10,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, resultstate) {
            return GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 15,
                crossAxisCount: 3,
                childAspectRatio: 1 / 1.4,
                shrinkWrap: true,
                children: List.generate(20, (index) {
                  final movies = resultstate.searchResultsList[index];
                  return SearchCard(imageUrl: '$apiImgUrl${movies.posterPath}');
                }));
          },
        ))
      ],
    );
  }
}

class SearchCard extends StatelessWidget {
  final String imageUrl;
  const SearchCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: br8,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
