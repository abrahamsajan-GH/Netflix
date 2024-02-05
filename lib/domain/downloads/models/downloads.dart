// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class DownloadsModel with _$DownloadsModel {
  const factory DownloadsModel({
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "title") required String? title,
  }) = _DownloadsModel;

  factory DownloadsModel.fromJson(Map<String, dynamic> json) =>
      _$DownloadsModelFromJson(json);
}
