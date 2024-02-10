import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/constants/api_endpoints.dart';
import 'package:netflix_clone/domain/constants/api_fails.dart';
import 'package:netflix_clone/domain/home/home_service.dart';
import 'package:netflix_clone/domain/home/model/home_model/home_model.dart';

@LazySingleton(as: HomeService)
class HomeDataImp implements HomeService {
  @override
  Future<Either<ApiFails, HomeModel>> getTopSearches() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloadsPath);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFails.serverFails());
      }
    } catch (_) {
      return left(const ApiFails.clientFails());
    }
  }

  @override
  Future<Either<ApiFails, HomeModel>> getCasualViewing() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.tvShowsPath);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFails.serverFails());
      }
    } catch (_) {
      return left(const ApiFails.clientFails());
    }
  }

  @override
  Future<Either<ApiFails, HomeModel>> getIndianMovies() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.everyonesWatchingPath);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFails.serverFails());
      }
    } catch (_) {
      return left(const ApiFails.clientFails());
    }
  }

  @override
  Future<Either<ApiFails, HomeModel>> getNewReleases() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.trendingPath);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFails.serverFails());
      }
    } catch (_) {
      return left(const ApiFails.clientFails());
    }
  }

  @override
  Future<Either<ApiFails, HomeModel>> getPopularOnes() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.topRatedPath);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFails.serverFails());
      }
    } catch (_) {
      return left(const ApiFails.clientFails());
    }
  }

  @override
  Future<Either<ApiFails, HomeModel>> getTrendingNow() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.tvSeriesPath);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFails.serverFails());
      }
    } catch (_) {
      return left(const ApiFails.clientFails());
    }
  }

  @override
  Future<Either<ApiFails, HomeModel>> getTvShows() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.comingSoonPath);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFails.serverFails());
      }
    } catch (_) {
      return left(const ApiFails.clientFails());
    }
  }
}
