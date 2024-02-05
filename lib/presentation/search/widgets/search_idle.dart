import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchPageTitle(
          title: 'Top Searches',
        ),
        h10,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(redClr),
                  ),
                );
              } else if (state.isErr) {
                return const Center(
                  child: Text("Error while loading data"),
                );
              } else if (state.searchIdleList.isEmpty) {
                return const Center(
                  child: Text("Error while loading data"),
                );
              } else {
                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      final movies = state.searchIdleList[index];
                      return TopSearchesList(
                          title: movies.title ?? "No Title Provided",
                          imageUrl: '$apiImgUrl${movies.backdropPath}');
                    },
                    separatorBuilder: (ctx, index) => h20,
                    itemCount: state.searchIdleList.length);
              }
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchesList extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchesList(
      {super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.30,
          height: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.cover),
              borderRadius: br8),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 6.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          color: whiteClr,
          size: 40,
        ),
        w5,
      ],
    );
  }
}
