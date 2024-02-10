import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloadsPath = "$apiBaseUrl/movie/popular?api_key=$apikey";
  static const searchResultsPath = "$apiBaseUrl/search/movie?api_key=$apikey";
  static const comingSoonPath = "$apiBaseUrl/movie/upcoming?api_key=$apikey";
  static const everyonesWatchingPath =
      "$apiBaseUrl/movie/now_playing?api_key=$apikey";
  static const tvShowsPath = "$apiBaseUrl/discover/tv?api_key=$apikey";
  static const topRatedPath = "$apiBaseUrl/movie/top_rated?api_key=$apikey";
  static const trendingPath = "$apiBaseUrl/trending/all/week?api_key=$apikey";
  static const tvSeriesPath = "$apiBaseUrl/tv/popular?api_key=$apikey";
}
