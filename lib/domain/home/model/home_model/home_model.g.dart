// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => HomeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

HomeData _$HomeDataFromJson(Map<String, dynamic> json) => HomeData(
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$HomeDataToJson(HomeData instance) => <String, dynamic>{
      'poster_path': instance.posterPath,
    };
