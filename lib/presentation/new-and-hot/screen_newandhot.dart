import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_clone/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/domain/new_and_hot/model/new_and_hot.dart';
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
            tabAlignment: TabAlignment.center,
            labelPadding: const EdgeInsets.symmetric(horizontal: 16),
            indicatorPadding:
                const EdgeInsets.symmetric(vertical: 6, horizontal: -19),
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
            ],
            labelStyle: const TextStyle(
              color: whiteClr,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'montserrat',
              letterSpacing: 0.1,
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
          child: TabBarView(
            children: [
              ComingSoonList(),
              EveryonesWatchingList(),
            ],
          ),
        ),
      ),
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context).add(const InitializeComingSoon());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<NewAndHotBloc>(context)
            .add(const InitializeComingSoon());
      },
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(redClr),
              ),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('Error while loading data'),
            );
          } else if (state.comingSoonList.isEmpty) {
            return const Center(
              child: Text('Error while loading data'),
            );
          } else {
            return ListView.builder(
              itemCount: state.comingSoonList.length,
              itemBuilder: (BuildContext context, index) {
                final finalDataCS = state.comingSoonList[index];
                if (finalDataCS.id == null) {
                  return const SizedBox();
                }
                final date = DateTime.tryParse(finalDataCS.releaseDate!);
                final formatedDate = DateFormat.yMMMd('en_US').format(date!);
                return ComingSoonWidget(
                  id: finalDataCS.id.toString(),
                  month: formatedDate
                      .split(' ')
                      .first
                      .substring(0, 3)
                      .toUpperCase(),
                  day: finalDataCS.releaseDate!.split('-')[1],
                  backdropPath: '$apiImgUrl${finalDataCS.backdropPath}',
                  title: finalDataCS.title ?? 'No title',
                  releaseDate: finalDataCS.releaseDate ?? 'Date not available',
                  overview: finalDataCS.overview ?? 'No overview available now',
                  genres: finalDataCS.getGenreNames(MovieGenres()),

                );
              },
            );
          }
        },
      ),
    );
  }
}

class EveryonesWatchingList extends StatelessWidget {
  const EveryonesWatchingList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context)
          .add(const InitializeEveryonesWatching());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<NewAndHotBloc>(context)
            .add(const InitializeEveryonesWatching());
      },
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(redClr),
              ),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('Error while loading data'),
            );
          } else if (state.everyonesWatchingList.isEmpty) {
            return const Center(
              child: Text('Error while loading data'),
            );
          } else {
            return ListView.builder(
              itemCount: state.everyonesWatchingList.length,
              itemBuilder: (BuildContext context, index) {
                final finalDataEW = state.everyonesWatchingList[index];
                if (finalDataEW.id == null) {
                  return const SizedBox();
                }
                return EveryonesWatchingWidget(
                  id: finalDataEW.id.toString(),
                  backdropPath: '$apiImgUrl${finalDataEW.backdropPath}',
                  title: finalDataEW.title ?? 'No title',
                  overview: finalDataEW.overview ?? 'No overview available now',
                  genres: finalDataEW.getGenreNames(MovieGenres()),

                );
              },
            );
          }
        },
      ),
    );
  }
}
