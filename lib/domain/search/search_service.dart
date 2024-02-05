import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/constants/api_fails.dart';
import 'package:netflix_clone/domain/search/model/search_idle_model/search_res_model.dart';

abstract class SearchService {
  Future<Either<ApiFails, SearchResultsModel>> searchData({
    required String searchQuery,
  });
}
