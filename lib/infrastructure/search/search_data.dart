import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/constants/api_endpoints.dart';
import 'package:netflix_clone/domain/constants/api_fails.dart';
import 'package:netflix_clone/domain/search/model/search_idle_model/search_res_model.dart';
import 'package:netflix_clone/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchData implements SearchService {
  @override
  Future<Either<ApiFails, SearchResultsModel>> searchData(
      {required String searchQuery}) async {
    try {
      final Response response = await Dio(BaseOptions())
          .get(ApiEndPoints.searchResultsPath, queryParameters: {
        'query': searchQuery,
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResultsModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFails.serverFails());
      }
    } catch (_) {
      return left(const ApiFails.clientFails());
    }
  }
}
