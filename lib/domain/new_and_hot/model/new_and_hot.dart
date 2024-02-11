import 'package:json_annotation/json_annotation.dart';
part 'new_and_hot.g.dart';

@JsonSerializable()
class NewAndHot {
  @JsonKey(name: "page")
  int? page;
  List<NewAndHotData>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  NewAndHot({this.page, this.results, this.totalPages, this.totalResults});

  factory NewAndHot.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotToJson(this);
}

@JsonSerializable()
class NewAndHotData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'title')
  String? title;

  NewAndHotData({
    this.backdropPath,
    this.genreIds,
    this.originalTitle,
    this.overview,
    this.releaseDate,
    this.title,
  });

  factory NewAndHotData.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotDataToJson(this);

  List<String> getGenreNames(MovieGenres movieGenres) {
    return genreIds?.map<String>((id) => movieGenres.genreMapping[id] ?? 'Unknown').toList() ?? [];
  }
}

class MovieGenres {
  final Map<int, String> genreMapping = {
    28: "Action",
    12: "Adventure",
    16: "Animation",
    35: "Comedy",
    80: "Crime",
    99: "Documentary",
    18: "Drama",
    10751: "Family",
    14: "Fantasy",
    36: "History",
    27: "Horror",
    10402: "Music",
    9648: "Mystery",
    10749: "Romance",
    878: "Science Fiction",
    10770: "TV Movie",
    53: "Thriller",
    10752: "War",
    37: "Western",
  };
}
