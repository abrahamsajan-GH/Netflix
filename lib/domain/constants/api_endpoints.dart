import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloadsPath = "$apiBaseUrl/movie/popular?api_key=$apikey";
  static const searchResultsPath = "$apiBaseUrl/search/movie?api_key=$apikey";
}
