import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/home/home_service.dart';

import '../../domain/home/model/home_model/home_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initial()) {
    on<_GetHomeScreenData>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true, isError: false));

        final topSearchesResult = await _homeService.getTopSearches();
        final trendingNowResult = await _homeService.getTrendingNow();
        final tvShowsResult = await _homeService.getTvShows();
        final newReleasesResult = await _homeService.getNewReleases();
        final casualViewingResult = await _homeService.getCasualViewing();
        final popularOnesResult = await _homeService.getPopularOnes();
        final indianMoviesResult = await _homeService.getIndianMovies();

        final newState = state.copyWith(
          isLoading: false,
          isError: false,
          topSearchesList: topSearchesResult.fold(
              (_) => state.topSearchesList, (r) => r.results ?? []),
          trendingNowList: trendingNowResult.fold(
              (_) => state.trendingNowList, (r) => r.results ?? []),
          tvShowsList: tvShowsResult.fold(
              (_) => state.tvShowsList, (r) => r.results ?? []),
          newReleasesList: newReleasesResult.fold(
              (_) => state.newReleasesList, (r) => r.results ?? []),
          casualViewingList: casualViewingResult.fold(
              (_) => state.casualViewingList, (r) => r.results ?? []),
          popularOnesList: popularOnesResult.fold(
              (_) => state.popularOnesList, (r) => r.results ?? []),
          indianMoviesList: indianMoviesResult.fold(
              (_) => state.indianMoviesList, (r) => r.results ?? []),
        );

        emit(newState);
        
      } catch (e) {
        emit(state.copyWith(isLoading: false, isError: true));
      }
    });
  }
}
