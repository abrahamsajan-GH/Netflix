import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/constants/api_fails.dart';
import 'package:netflix_clone/domain/new_and_hot/model/new_and_hot.dart';

abstract class NewAndHotService {
  Future<Either<ApiFails, NewAndHot>> comingSoon();
  Future<Either<ApiFails, NewAndHot>> everyonesWatching();
}
