import 'package:json_annotation/json_annotation.dart';

part 'search_idle_model.g.dart';

@JsonSerializable()
class SearchResultsModel {
  @JsonKey(name: "results")
  List<SearchResults>? results;

  SearchResultsModel({this.results = const []});

  factory SearchResultsModel.fromJson(Map<String, dynamic> json) {
    return _$SearchResultsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultsModelToJson(this);
}

@JsonSerializable()
class SearchResults {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  SearchResults({this.id, this.originalTitle, this.posterPath});

  factory SearchResults.fromJson(Map<String, dynamic> json) {
    return _$SearchResultsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultsToJson(this);
}
