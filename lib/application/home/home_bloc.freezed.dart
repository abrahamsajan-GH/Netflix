// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeScreenData value) getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeScreenData value)? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeScreenDataImplCopyWith<$Res> {
  factory _$$GetHomeScreenDataImplCopyWith(_$GetHomeScreenDataImpl value,
          $Res Function(_$GetHomeScreenDataImpl) then) =
      __$$GetHomeScreenDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeScreenDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeScreenDataImpl>
    implements _$$GetHomeScreenDataImplCopyWith<$Res> {
  __$$GetHomeScreenDataImplCopyWithImpl(_$GetHomeScreenDataImpl _value,
      $Res Function(_$GetHomeScreenDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeScreenDataImpl implements _GetHomeScreenData {
  const _$GetHomeScreenDataImpl();

  @override
  String toString() {
    return 'HomeEvent.getHomeScreenData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeScreenDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) {
    return getHomeScreenData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) {
    return getHomeScreenData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeScreenData value) getHomeScreenData,
  }) {
    return getHomeScreenData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeScreenData value)? getHomeScreenData,
  }) {
    return getHomeScreenData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData(this);
    }
    return orElse();
  }
}

abstract class _GetHomeScreenData implements HomeEvent {
  const factory _GetHomeScreenData() = _$GetHomeScreenDataImpl;
}

/// @nodoc
mixin _$HomeState {
  String get stateId => throw _privateConstructorUsedError;
  List<HomeData> get topSearchesList => throw _privateConstructorUsedError;
  List<HomeData> get trendingNowList => throw _privateConstructorUsedError;
  List<HomeData> get tvShowsList => throw _privateConstructorUsedError;
  List<HomeData> get newReleasesList => throw _privateConstructorUsedError;
  List<HomeData> get casualViewingList => throw _privateConstructorUsedError;
  List<HomeData> get popularOnesList => throw _privateConstructorUsedError;
  List<HomeData> get indianMoviesList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String stateId,
      List<HomeData> topSearchesList,
      List<HomeData> trendingNowList,
      List<HomeData> tvShowsList,
      List<HomeData> newReleasesList,
      List<HomeData> casualViewingList,
      List<HomeData> popularOnesList,
      List<HomeData> indianMoviesList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? topSearchesList = null,
    Object? trendingNowList = null,
    Object? tvShowsList = null,
    Object? newReleasesList = null,
    Object? casualViewingList = null,
    Object? popularOnesList = null,
    Object? indianMoviesList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      topSearchesList: null == topSearchesList
          ? _value.topSearchesList
          : topSearchesList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      trendingNowList: null == trendingNowList
          ? _value.trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      tvShowsList: null == tvShowsList
          ? _value.tvShowsList
          : tvShowsList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      newReleasesList: null == newReleasesList
          ? _value.newReleasesList
          : newReleasesList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      casualViewingList: null == casualViewingList
          ? _value.casualViewingList
          : casualViewingList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      popularOnesList: null == popularOnesList
          ? _value.popularOnesList
          : popularOnesList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      indianMoviesList: null == indianMoviesList
          ? _value.indianMoviesList
          : indianMoviesList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateId,
      List<HomeData> topSearchesList,
      List<HomeData> trendingNowList,
      List<HomeData> tvShowsList,
      List<HomeData> newReleasesList,
      List<HomeData> casualViewingList,
      List<HomeData> popularOnesList,
      List<HomeData> indianMoviesList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? topSearchesList = null,
    Object? trendingNowList = null,
    Object? tvShowsList = null,
    Object? newReleasesList = null,
    Object? casualViewingList = null,
    Object? popularOnesList = null,
    Object? indianMoviesList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$InitialImpl(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      topSearchesList: null == topSearchesList
          ? _value._topSearchesList
          : topSearchesList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      trendingNowList: null == trendingNowList
          ? _value._trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      tvShowsList: null == tvShowsList
          ? _value._tvShowsList
          : tvShowsList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      newReleasesList: null == newReleasesList
          ? _value._newReleasesList
          : newReleasesList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      casualViewingList: null == casualViewingList
          ? _value._casualViewingList
          : casualViewingList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      popularOnesList: null == popularOnesList
          ? _value._popularOnesList
          : popularOnesList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      indianMoviesList: null == indianMoviesList
          ? _value._indianMoviesList
          : indianMoviesList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.stateId,
      required final List<HomeData> topSearchesList,
      required final List<HomeData> trendingNowList,
      required final List<HomeData> tvShowsList,
      required final List<HomeData> newReleasesList,
      required final List<HomeData> casualViewingList,
      required final List<HomeData> popularOnesList,
      required final List<HomeData> indianMoviesList,
      required this.isLoading,
      required this.isError})
      : _topSearchesList = topSearchesList,
        _trendingNowList = trendingNowList,
        _tvShowsList = tvShowsList,
        _newReleasesList = newReleasesList,
        _casualViewingList = casualViewingList,
        _popularOnesList = popularOnesList,
        _indianMoviesList = indianMoviesList;

  @override
  final String stateId;
  final List<HomeData> _topSearchesList;
  @override
  List<HomeData> get topSearchesList {
    if (_topSearchesList is EqualUnmodifiableListView) return _topSearchesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topSearchesList);
  }

  final List<HomeData> _trendingNowList;
  @override
  List<HomeData> get trendingNowList {
    if (_trendingNowList is EqualUnmodifiableListView) return _trendingNowList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingNowList);
  }

  final List<HomeData> _tvShowsList;
  @override
  List<HomeData> get tvShowsList {
    if (_tvShowsList is EqualUnmodifiableListView) return _tvShowsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShowsList);
  }

  final List<HomeData> _newReleasesList;
  @override
  List<HomeData> get newReleasesList {
    if (_newReleasesList is EqualUnmodifiableListView) return _newReleasesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newReleasesList);
  }

  final List<HomeData> _casualViewingList;
  @override
  List<HomeData> get casualViewingList {
    if (_casualViewingList is EqualUnmodifiableListView)
      return _casualViewingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_casualViewingList);
  }

  final List<HomeData> _popularOnesList;
  @override
  List<HomeData> get popularOnesList {
    if (_popularOnesList is EqualUnmodifiableListView) return _popularOnesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularOnesList);
  }

  final List<HomeData> _indianMoviesList;
  @override
  List<HomeData> get indianMoviesList {
    if (_indianMoviesList is EqualUnmodifiableListView)
      return _indianMoviesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_indianMoviesList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeState(stateId: $stateId, topSearchesList: $topSearchesList, trendingNowList: $trendingNowList, tvShowsList: $tvShowsList, newReleasesList: $newReleasesList, casualViewingList: $casualViewingList, popularOnesList: $popularOnesList, indianMoviesList: $indianMoviesList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            const DeepCollectionEquality()
                .equals(other._topSearchesList, _topSearchesList) &&
            const DeepCollectionEquality()
                .equals(other._trendingNowList, _trendingNowList) &&
            const DeepCollectionEquality()
                .equals(other._tvShowsList, _tvShowsList) &&
            const DeepCollectionEquality()
                .equals(other._newReleasesList, _newReleasesList) &&
            const DeepCollectionEquality()
                .equals(other._casualViewingList, _casualViewingList) &&
            const DeepCollectionEquality()
                .equals(other._popularOnesList, _popularOnesList) &&
            const DeepCollectionEquality()
                .equals(other._indianMoviesList, _indianMoviesList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateId,
      const DeepCollectionEquality().hash(_topSearchesList),
      const DeepCollectionEquality().hash(_trendingNowList),
      const DeepCollectionEquality().hash(_tvShowsList),
      const DeepCollectionEquality().hash(_newReleasesList),
      const DeepCollectionEquality().hash(_casualViewingList),
      const DeepCollectionEquality().hash(_popularOnesList),
      const DeepCollectionEquality().hash(_indianMoviesList),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final String stateId,
      required final List<HomeData> topSearchesList,
      required final List<HomeData> trendingNowList,
      required final List<HomeData> tvShowsList,
      required final List<HomeData> newReleasesList,
      required final List<HomeData> casualViewingList,
      required final List<HomeData> popularOnesList,
      required final List<HomeData> indianMoviesList,
      required final bool isLoading,
      required final bool isError}) = _$InitialImpl;

  @override
  String get stateId;
  @override
  List<HomeData> get topSearchesList;
  @override
  List<HomeData> get trendingNowList;
  @override
  List<HomeData> get tvShowsList;
  @override
  List<HomeData> get newReleasesList;
  @override
  List<HomeData> get casualViewingList;
  @override
  List<HomeData> get popularOnesList;
  @override
  List<HomeData> get indianMoviesList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
