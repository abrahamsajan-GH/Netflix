import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/constants/api_endpoints.dart';
import 'package:netflix_clone/domain/constants/api_fails.dart';
import 'package:netflix_clone/domain/downloads/downloads_api_cats.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

@LazySingleton(as: DownloadsApiCats)
class DownloadsData implements DownloadsApiCats {
  @override
  Future<Either<ApiFails, List<DownloadsModel>>> getDownloadsData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloadsPath);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsDataList = (response.data['results'] as List)
            .map((e) => DownloadsModel.fromJson(e))
            .toList();
        return right(downloadsDataList);
      } else {
        return left(const ApiFails.serverFails());
      }
    } catch (_) {
      return left(const ApiFails.clientFails());
    }
  }
}
