import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/constants/api_endpoints.dart';
import 'package:netflix_clone/domain/constants/api_fails.dart';
import 'package:netflix_clone/domain/new_and_hot/model/new_and_hot.dart';
import 'package:netflix_clone/domain/new_and_hot/n_and_h_service.dart';

@LazySingleton(as: NewAndHotService)
class NewAndHotImp implements NewAndHotService {
  @override
  Future<Either<ApiFails, NewAndHot>> comingSoon() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.comingSoonPath);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewAndHot.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFails.serverFails());
      }
    } catch (_) {
      return left(const ApiFails.clientFails());
    }
  }

  @override
  Future<Either<ApiFails, NewAndHot>> everyonesWatching() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.everyonesWatchingPath);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewAndHot.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFails.serverFails());
      }
    } catch (_) {
      return left(const ApiFails.clientFails());
    }
  }
}
