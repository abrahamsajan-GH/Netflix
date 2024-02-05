// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_and_hot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewAndHot _$NewAndHotFromJson(Map<String, dynamic> json) => NewAndHot(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => NewAndHotData.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$NewAndHotToJson(NewAndHot instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

NewAndHotData _$NewAndHotDataFromJson(Map<String, dynamic> json) =>
    NewAndHotData(
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$NewAndHotDataToJson(NewAndHotData instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };
