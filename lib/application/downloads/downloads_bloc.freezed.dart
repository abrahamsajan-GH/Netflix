// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsData value) getDownloadsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsData value)? getDownloadsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsData value)? getDownloadsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDownloadsDataImplCopyWith<$Res> {
  factory _$$GetDownloadsDataImplCopyWith(_$GetDownloadsDataImpl value,
          $Res Function(_$GetDownloadsDataImpl) then) =
      __$$GetDownloadsDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownloadsDataImplCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$GetDownloadsDataImpl>
    implements _$$GetDownloadsDataImplCopyWith<$Res> {
  __$$GetDownloadsDataImplCopyWithImpl(_$GetDownloadsDataImpl _value,
      $Res Function(_$GetDownloadsDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDownloadsDataImpl implements _GetDownloadsData {
  const _$GetDownloadsDataImpl();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadsData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownloadsDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsData,
  }) {
    return getDownloadsData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsData,
  }) {
    return getDownloadsData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsData,
    required TResult orElse(),
  }) {
    if (getDownloadsData != null) {
      return getDownloadsData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsData value) getDownloadsData,
  }) {
    return getDownloadsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsData value)? getDownloadsData,
  }) {
    return getDownloadsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsData value)? getDownloadsData,
    required TResult orElse(),
  }) {
    if (getDownloadsData != null) {
      return getDownloadsData(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadsData implements DownloadsEvent {
  const factory _GetDownloadsData() = _$GetDownloadsDataImpl;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DownloadsModel> get downloads => throw _privateConstructorUsedError;
  Option<Either<ApiFails, List<DownloadsModel>>> get downloadsFailORSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res, DownloadsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<DownloadsModel> downloads,
      Option<Either<ApiFails, List<DownloadsModel>>> downloadsFailORSuccess});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res, $Val extends DownloadsState>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloads = null,
    Object? downloadsFailORSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      downloadsFailORSuccess: null == downloadsFailORSuccess
          ? _value.downloadsFailORSuccess
          : downloadsFailORSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFails, List<DownloadsModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsStateImplCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$DownloadsStateImplCopyWith(_$DownloadsStateImpl value,
          $Res Function(_$DownloadsStateImpl) then) =
      __$$DownloadsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<DownloadsModel> downloads,
      Option<Either<ApiFails, List<DownloadsModel>>> downloadsFailORSuccess});
}

/// @nodoc
class __$$DownloadsStateImplCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res, _$DownloadsStateImpl>
    implements _$$DownloadsStateImplCopyWith<$Res> {
  __$$DownloadsStateImplCopyWithImpl(
      _$DownloadsStateImpl _value, $Res Function(_$DownloadsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloads = null,
    Object? downloadsFailORSuccess = null,
  }) {
    return _then(_$DownloadsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      downloadsFailORSuccess: null == downloadsFailORSuccess
          ? _value.downloadsFailORSuccess
          : downloadsFailORSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFails, List<DownloadsModel>>>,
    ));
  }
}

/// @nodoc

class _$DownloadsStateImpl implements _DownloadsState {
  const _$DownloadsStateImpl(
      {required this.isLoading,
      required final List<DownloadsModel> downloads,
      required this.downloadsFailORSuccess})
      : _downloads = downloads;

  @override
  final bool isLoading;
  final List<DownloadsModel> _downloads;
  @override
  List<DownloadsModel> get downloads {
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloads);
  }

  @override
  final Option<Either<ApiFails, List<DownloadsModel>>> downloadsFailORSuccess;

  @override
  String toString() {
    return 'DownloadsState(isLoading: $isLoading, downloads: $downloads, downloadsFailORSuccess: $downloadsFailORSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            (identical(other.downloadsFailORSuccess, downloadsFailORSuccess) ||
                other.downloadsFailORSuccess == downloadsFailORSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_downloads), downloadsFailORSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      __$$DownloadsStateImplCopyWithImpl<_$DownloadsStateImpl>(
          this, _$identity);
}

abstract class _DownloadsState implements DownloadsState {
  const factory _DownloadsState(
      {required final bool isLoading,
      required final List<DownloadsModel> downloads,
      required final Option<Either<ApiFails, List<DownloadsModel>>>
          downloadsFailORSuccess}) = _$DownloadsStateImpl;

  @override
  bool get isLoading;
  @override
  List<DownloadsModel> get downloads;
  @override
  Option<Either<ApiFails, List<DownloadsModel>>> get downloadsFailORSuccess;
  @override
  @JsonKey(ignore: true)
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
