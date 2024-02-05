// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultsModel _$SearchResultsModelFromJson(Map<String, dynamic> json) =>
    SearchResultsModel(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchResults.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchResultsModelToJson(SearchResultsModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

SearchResults _$SearchResultsFromJson(Map<String, dynamic> json) =>
    SearchResults(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$SearchResultsToJson(SearchResults instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
