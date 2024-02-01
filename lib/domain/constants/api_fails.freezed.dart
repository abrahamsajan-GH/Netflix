// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_fails.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiFails {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFails,
    required TResult Function() serverFails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFails,
    TResult? Function()? serverFails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFails,
    TResult Function()? serverFails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_clientFails value) clientFails,
    required TResult Function(_serverFails value) serverFails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_clientFails value)? clientFails,
    TResult? Function(_serverFails value)? serverFails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_clientFails value)? clientFails,
    TResult Function(_serverFails value)? serverFails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailsCopyWith<$Res> {
  factory $ApiFailsCopyWith(ApiFails value, $Res Function(ApiFails) then) =
      _$ApiFailsCopyWithImpl<$Res, ApiFails>;
}

/// @nodoc
class _$ApiFailsCopyWithImpl<$Res, $Val extends ApiFails>
    implements $ApiFailsCopyWith<$Res> {
  _$ApiFailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$clientFailsImplCopyWith<$Res> {
  factory _$$clientFailsImplCopyWith(
          _$clientFailsImpl value, $Res Function(_$clientFailsImpl) then) =
      __$$clientFailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$clientFailsImplCopyWithImpl<$Res>
    extends _$ApiFailsCopyWithImpl<$Res, _$clientFailsImpl>
    implements _$$clientFailsImplCopyWith<$Res> {
  __$$clientFailsImplCopyWithImpl(
      _$clientFailsImpl _value, $Res Function(_$clientFailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$clientFailsImpl implements _clientFails {
  const _$clientFailsImpl();

  @override
  String toString() {
    return 'ApiFails.clientFails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$clientFailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFails,
    required TResult Function() serverFails,
  }) {
    return clientFails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFails,
    TResult? Function()? serverFails,
  }) {
    return clientFails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFails,
    TResult Function()? serverFails,
    required TResult orElse(),
  }) {
    if (clientFails != null) {
      return clientFails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_clientFails value) clientFails,
    required TResult Function(_serverFails value) serverFails,
  }) {
    return clientFails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_clientFails value)? clientFails,
    TResult? Function(_serverFails value)? serverFails,
  }) {
    return clientFails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_clientFails value)? clientFails,
    TResult Function(_serverFails value)? serverFails,
    required TResult orElse(),
  }) {
    if (clientFails != null) {
      return clientFails(this);
    }
    return orElse();
  }
}

abstract class _clientFails implements ApiFails {
  const factory _clientFails() = _$clientFailsImpl;
}

/// @nodoc
abstract class _$$serverFailsImplCopyWith<$Res> {
  factory _$$serverFailsImplCopyWith(
          _$serverFailsImpl value, $Res Function(_$serverFailsImpl) then) =
      __$$serverFailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$serverFailsImplCopyWithImpl<$Res>
    extends _$ApiFailsCopyWithImpl<$Res, _$serverFailsImpl>
    implements _$$serverFailsImplCopyWith<$Res> {
  __$$serverFailsImplCopyWithImpl(
      _$serverFailsImpl _value, $Res Function(_$serverFailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$serverFailsImpl implements _serverFails {
  const _$serverFailsImpl();

  @override
  String toString() {
    return 'ApiFails.serverFails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$serverFailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFails,
    required TResult Function() serverFails,
  }) {
    return serverFails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFails,
    TResult? Function()? serverFails,
  }) {
    return serverFails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFails,
    TResult Function()? serverFails,
    required TResult orElse(),
  }) {
    if (serverFails != null) {
      return serverFails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_clientFails value) clientFails,
    required TResult Function(_serverFails value) serverFails,
  }) {
    return serverFails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_clientFails value)? clientFails,
    TResult? Function(_serverFails value)? serverFails,
  }) {
    return serverFails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_clientFails value)? clientFails,
    TResult Function(_serverFails value)? serverFails,
    required TResult orElse(),
  }) {
    if (serverFails != null) {
      return serverFails(this);
    }
    return orElse();
  }
}

abstract class _serverFails implements ApiFails {
  const factory _serverFails() = _$serverFailsImpl;
}
