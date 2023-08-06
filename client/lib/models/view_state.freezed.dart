// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) completed,
    required TResult Function() error,
    required TResult Function() ready,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T value)? completed,
    TResult? Function()? error,
    TResult? Function()? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? completed,
    TResult Function()? error,
    TResult Function()? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateLoading<T> value) loading,
    required TResult Function(ViewStateCompleted<T> value) completed,
    required TResult Function(ViewStateError<T> value) error,
    required TResult Function(ViewStateReady<T> value) ready,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateLoading<T> value)? loading,
    TResult? Function(ViewStateCompleted<T> value)? completed,
    TResult? Function(ViewStateError<T> value)? error,
    TResult? Function(ViewStateReady<T> value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateLoading<T> value)? loading,
    TResult Function(ViewStateCompleted<T> value)? completed,
    TResult Function(ViewStateError<T> value)? error,
    TResult Function(ViewStateReady<T> value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStateCopyWith<T, $Res> {
  factory $ViewStateCopyWith(
          ViewState<T> value, $Res Function(ViewState<T>) then) =
      _$ViewStateCopyWithImpl<T, $Res, ViewState<T>>;
}

/// @nodoc
class _$ViewStateCopyWithImpl<T, $Res, $Val extends ViewState<T>>
    implements $ViewStateCopyWith<T, $Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ViewStateLoadingCopyWith<T, $Res> {
  factory _$$ViewStateLoadingCopyWith(_$ViewStateLoading<T> value,
          $Res Function(_$ViewStateLoading<T>) then) =
      __$$ViewStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ViewStateLoadingCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateLoading<T>>
    implements _$$ViewStateLoadingCopyWith<T, $Res> {
  __$$ViewStateLoadingCopyWithImpl(
      _$ViewStateLoading<T> _value, $Res Function(_$ViewStateLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewStateLoading<T> implements ViewStateLoading<T> {
  const _$ViewStateLoading();

  @override
  String toString() {
    return 'ViewState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) completed,
    required TResult Function() error,
    required TResult Function() ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T value)? completed,
    TResult? Function()? error,
    TResult? Function()? ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? completed,
    TResult Function()? error,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateLoading<T> value) loading,
    required TResult Function(ViewStateCompleted<T> value) completed,
    required TResult Function(ViewStateError<T> value) error,
    required TResult Function(ViewStateReady<T> value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateLoading<T> value)? loading,
    TResult? Function(ViewStateCompleted<T> value)? completed,
    TResult? Function(ViewStateError<T> value)? error,
    TResult? Function(ViewStateReady<T> value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateLoading<T> value)? loading,
    TResult Function(ViewStateCompleted<T> value)? completed,
    TResult Function(ViewStateError<T> value)? error,
    TResult Function(ViewStateReady<T> value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ViewStateLoading<T> implements ViewState<T> {
  const factory ViewStateLoading() = _$ViewStateLoading<T>;
}

/// @nodoc
abstract class _$$ViewStateCompletedCopyWith<T, $Res> {
  factory _$$ViewStateCompletedCopyWith(_$ViewStateCompleted<T> value,
          $Res Function(_$ViewStateCompleted<T>) then) =
      __$$ViewStateCompletedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$ViewStateCompletedCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateCompleted<T>>
    implements _$$ViewStateCompletedCopyWith<T, $Res> {
  __$$ViewStateCompletedCopyWithImpl(_$ViewStateCompleted<T> _value,
      $Res Function(_$ViewStateCompleted<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ViewStateCompleted<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ViewStateCompleted<T> implements ViewStateCompleted<T> {
  const _$ViewStateCompleted(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'ViewState<$T>.completed(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewStateCompleted<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewStateCompletedCopyWith<T, _$ViewStateCompleted<T>> get copyWith =>
      __$$ViewStateCompletedCopyWithImpl<T, _$ViewStateCompleted<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) completed,
    required TResult Function() error,
    required TResult Function() ready,
  }) {
    return completed(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T value)? completed,
    TResult? Function()? error,
    TResult? Function()? ready,
  }) {
    return completed?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? completed,
    TResult Function()? error,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateLoading<T> value) loading,
    required TResult Function(ViewStateCompleted<T> value) completed,
    required TResult Function(ViewStateError<T> value) error,
    required TResult Function(ViewStateReady<T> value) ready,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateLoading<T> value)? loading,
    TResult? Function(ViewStateCompleted<T> value)? completed,
    TResult? Function(ViewStateError<T> value)? error,
    TResult? Function(ViewStateReady<T> value)? ready,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateLoading<T> value)? loading,
    TResult Function(ViewStateCompleted<T> value)? completed,
    TResult Function(ViewStateError<T> value)? error,
    TResult Function(ViewStateReady<T> value)? ready,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class ViewStateCompleted<T> implements ViewState<T> {
  const factory ViewStateCompleted(final T value) = _$ViewStateCompleted<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$ViewStateCompletedCopyWith<T, _$ViewStateCompleted<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewStateErrorCopyWith<T, $Res> {
  factory _$$ViewStateErrorCopyWith(
          _$ViewStateError<T> value, $Res Function(_$ViewStateError<T>) then) =
      __$$ViewStateErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ViewStateErrorCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateError<T>>
    implements _$$ViewStateErrorCopyWith<T, $Res> {
  __$$ViewStateErrorCopyWithImpl(
      _$ViewStateError<T> _value, $Res Function(_$ViewStateError<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewStateError<T> implements ViewStateError<T> {
  const _$ViewStateError();

  @override
  String toString() {
    return 'ViewState<$T>.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) completed,
    required TResult Function() error,
    required TResult Function() ready,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T value)? completed,
    TResult? Function()? error,
    TResult? Function()? ready,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? completed,
    TResult Function()? error,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateLoading<T> value) loading,
    required TResult Function(ViewStateCompleted<T> value) completed,
    required TResult Function(ViewStateError<T> value) error,
    required TResult Function(ViewStateReady<T> value) ready,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateLoading<T> value)? loading,
    TResult? Function(ViewStateCompleted<T> value)? completed,
    TResult? Function(ViewStateError<T> value)? error,
    TResult? Function(ViewStateReady<T> value)? ready,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateLoading<T> value)? loading,
    TResult Function(ViewStateCompleted<T> value)? completed,
    TResult Function(ViewStateError<T> value)? error,
    TResult Function(ViewStateReady<T> value)? ready,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ViewStateError<T> implements ViewState<T> {
  const factory ViewStateError() = _$ViewStateError<T>;
}

/// @nodoc
abstract class _$$ViewStateReadyCopyWith<T, $Res> {
  factory _$$ViewStateReadyCopyWith(
          _$ViewStateReady<T> value, $Res Function(_$ViewStateReady<T>) then) =
      __$$ViewStateReadyCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ViewStateReadyCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateReady<T>>
    implements _$$ViewStateReadyCopyWith<T, $Res> {
  __$$ViewStateReadyCopyWithImpl(
      _$ViewStateReady<T> _value, $Res Function(_$ViewStateReady<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewStateReady<T> implements ViewStateReady<T> {
  const _$ViewStateReady();

  @override
  String toString() {
    return 'ViewState<$T>.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateReady<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) completed,
    required TResult Function() error,
    required TResult Function() ready,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T value)? completed,
    TResult? Function()? error,
    TResult? Function()? ready,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? completed,
    TResult Function()? error,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateLoading<T> value) loading,
    required TResult Function(ViewStateCompleted<T> value) completed,
    required TResult Function(ViewStateError<T> value) error,
    required TResult Function(ViewStateReady<T> value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateLoading<T> value)? loading,
    TResult? Function(ViewStateCompleted<T> value)? completed,
    TResult? Function(ViewStateError<T> value)? error,
    TResult? Function(ViewStateReady<T> value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateLoading<T> value)? loading,
    TResult Function(ViewStateCompleted<T> value)? completed,
    TResult Function(ViewStateError<T> value)? error,
    TResult Function(ViewStateReady<T> value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class ViewStateReady<T> implements ViewState<T> {
  const factory ViewStateReady() = _$ViewStateReady<T>;
}
