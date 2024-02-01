import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/constants/api_fails.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

abstract class DownloadsApiCats {
  Future<Either<ApiFails, List<DownloadsModel>>> getDownloadsData();
}
