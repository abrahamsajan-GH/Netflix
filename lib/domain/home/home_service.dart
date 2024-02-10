import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/constants/api_fails.dart';
import 'package:netflix_clone/domain/home/model/home_model/home_model.dart';

abstract class HomeService {
  Future<Either<ApiFails, HomeModel>> getTopSearches();
  Future<Either<ApiFails, HomeModel>> getTrendingNow();
  Future<Either<ApiFails, HomeModel>> getTvShows();
  Future<Either<ApiFails, HomeModel>> getNewReleases();
  Future<Either<ApiFails, HomeModel>> getCasualViewing();
  Future<Either<ApiFails, HomeModel>> getPopularOnes();
  Future<Either<ApiFails, HomeModel>> getIndianMovies();
}
