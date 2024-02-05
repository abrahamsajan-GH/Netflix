import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/constants/api_fails.dart';
import 'package:netflix_clone/domain/downloads/downloads_api_cats.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/domain/search/model/search_idle_model/search_res_model.dart';
import 'package:netflix_clone/domain/search/search_service.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadsApiCats _apiCats;
  final SearchService _searchService;

  SearchBloc(this._apiCats, this._searchService)
      : super(SearchState.initial()) {
    on<Initialize>((event, emit) async {
      if (state.searchIdleList.isNotEmpty) {
        emit(state);
        return;
      }
      emit(const SearchState(
        searchResultsList: [],
        searchIdleList: [],
        isLoading: true,
        isErr: false,
      ));

      // Idle case
      final results = await _apiCats.getDownloadsData();
      results.fold(
        (ApiFails l) {
          emit(const SearchState(
            searchResultsList: [],
            searchIdleList: [],
            isLoading: false,
            isErr: true,
          ));
        },
        (List<DownloadsModel> list) {
          emit(SearchState(
            searchResultsList: [],
            searchIdleList: list,
            isLoading: false,
            isErr: false,
          ));
        },
      );
    });

    // search results case
    on<SearchMovie>((event, emit) async {
      emit(const SearchState(
        searchResultsList: [],
        searchIdleList: [],
        isLoading: true,
        isErr: false,
      ));

      if (event.searchResultsPath.isEmpty) {
        emit(SearchState.initial());
        return;
      }

      final result =
          await _searchService.searchData(searchQuery: event.searchResultsPath);
      final resultstate = result.fold(
        (ApiFails l) {
          emit(const SearchState(
            searchResultsList: [],
            searchIdleList: [],
            isLoading: false,
            isErr: true,
          ));
        },
        (SearchResultsModel r) {
          emit(SearchState(
            searchResultsList: r.results ?? [],
            searchIdleList: [],
            isLoading: false,
            isErr: false,
          ));
        },
      );
      emit(resultstate);
    });
  }
}
