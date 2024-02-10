part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<HomeData> topSearchesList,
    required List<HomeData> trendingNowList,
    required List<HomeData> tvShowsList,
    required List<HomeData> newReleasesList,
    required List<HomeData> casualViewingList,
    required List<HomeData> popularOnesList,
    required List<HomeData> indianMoviesList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        stateId: '0',
        topSearchesList: [],
        trendingNowList: [],
        tvShowsList: [],
        newReleasesList: [],
        casualViewingList: [],
        popularOnesList: [],
        indianMoviesList: [],
        isLoading: false,
        isError: false,
      );
}
