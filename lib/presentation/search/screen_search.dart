import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/domain/debounce/debouncer.dart';
import 'package:netflix_clone/presentation/search/widgets/search_idle.dart';
import 'package:netflix_clone/presentation/search/widgets/search_results.dart';
// import 'package:netflix_clone/presentation/search/widgets/search_results.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                placeholder: 'Search',
                placeholderStyle: TextStyle(
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                ),
                backgroundColor: greyClr.withOpacity(0.3),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: whiteClr,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: whiteClr,
                ),
                style: TextStyle(
                    color: whiteClr,
                    letterSpacing: 0.3,
                    fontFamily: GoogleFonts.montserrat().fontFamily),
                onChanged: (value) {
                  _debouncer.run(() {
                    BlocProvider.of<SearchBloc>(context)
                        .add(SearchMovie(searchResultsPath: value));
                  });
                },
              ),
              h10,
              Expanded(child: BlocBuilder<SearchBloc, SearchState>(
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
                  } else if (state.searchResultsList.isEmpty) {
                    return const SearchIdleWidget();
                  } else {
                    return const SearchResultsWidget();
                  }
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
