import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  int? page;
  List<HomeData>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  HomeModel({this.page, this.results, this.totalPages, this.totalResults});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return _$HomeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}

@JsonSerializable()
class HomeData {
  
  @JsonKey(name: 'poster_path')
  String? posterPath;

  HomeData({
    this.posterPath,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) {
    return _$HomeDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeDataToJson(this);
}