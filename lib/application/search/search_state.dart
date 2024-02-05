part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
      {required List<SearchResults> searchResultsList,
      required List<DownloadsModel> searchIdleList,
      required bool isLoading,
      required bool isErr}) = _SearchState;

  factory SearchState.initial() => const SearchState(
      searchResultsList: [],
      searchIdleList: [],
      isLoading: false,
      isErr: false);
}
