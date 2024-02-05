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
}
