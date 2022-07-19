// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_submission_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormzStatus<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submissionInProgress,
    required TResult Function(String error) submissionFailure,
    required TResult Function(T? data) submissionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submissionInProgress,
    TResult Function(String error)? submissionFailure,
    TResult Function(T? data)? submissionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submissionInProgress,
    TResult Function(String error)? submissionFailure,
    TResult Function(T? data)? submissionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormzStatusInitial<T> value) initial,
    required TResult Function(FormzStatusSubmissionInProgress<T> value)
        submissionInProgress,
    required TResult Function(FormzStatusSubmissionFailure<T> value)
        submissionFailure,
    required TResult Function(FormzStatusSubmissionSuccess<T> value)
        submissionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusSubmissionInProgress<T> value)?
        submissionInProgress,
    TResult Function(FormzStatusSubmissionFailure<T> value)? submissionFailure,
    TResult Function(FormzStatusSubmissionSuccess<T> value)? submissionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusSubmissionInProgress<T> value)?
        submissionInProgress,
    TResult Function(FormzStatusSubmissionFailure<T> value)? submissionFailure,
    TResult Function(FormzStatusSubmissionSuccess<T> value)? submissionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormzStatusCopyWith<T, $Res> {
  factory $FormzStatusCopyWith(
          FormzStatus<T> value, $Res Function(FormzStatus<T>) then) =
      _$FormzStatusCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$FormzStatusCopyWithImpl<T, $Res>
    implements $FormzStatusCopyWith<T, $Res> {
  _$FormzStatusCopyWithImpl(this._value, this._then);

  final FormzStatus<T> _value;
  // ignore: unused_field
  final $Res Function(FormzStatus<T>) _then;
}

/// @nodoc
abstract class _$$FormzStatusInitialCopyWith<T, $Res> {
  factory _$$FormzStatusInitialCopyWith(_$FormzStatusInitial<T> value,
          $Res Function(_$FormzStatusInitial<T>) then) =
      __$$FormzStatusInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FormzStatusInitialCopyWithImpl<T, $Res>
    extends _$FormzStatusCopyWithImpl<T, $Res>
    implements _$$FormzStatusInitialCopyWith<T, $Res> {
  __$$FormzStatusInitialCopyWithImpl(_$FormzStatusInitial<T> _value,
      $Res Function(_$FormzStatusInitial<T>) _then)
      : super(_value, (v) => _then(v as _$FormzStatusInitial<T>));

  @override
  _$FormzStatusInitial<T> get _value => super._value as _$FormzStatusInitial<T>;
}

/// @nodoc

class _$FormzStatusInitial<T> implements FormzStatusInitial<T> {
  const _$FormzStatusInitial();

  @override
  String toString() {
    return 'FormzStatus<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormzStatusInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submissionInProgress,
    required TResult Function(String error) submissionFailure,
    required TResult Function(T? data) submissionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submissionInProgress,
    TResult Function(String error)? submissionFailure,
    TResult Function(T? data)? submissionSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submissionInProgress,
    TResult Function(String error)? submissionFailure,
    TResult Function(T? data)? submissionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormzStatusInitial<T> value) initial,
    required TResult Function(FormzStatusSubmissionInProgress<T> value)
        submissionInProgress,
    required TResult Function(FormzStatusSubmissionFailure<T> value)
        submissionFailure,
    required TResult Function(FormzStatusSubmissionSuccess<T> value)
        submissionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusSubmissionInProgress<T> value)?
        submissionInProgress,
    TResult Function(FormzStatusSubmissionFailure<T> value)? submissionFailure,
    TResult Function(FormzStatusSubmissionSuccess<T> value)? submissionSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusSubmissionInProgress<T> value)?
        submissionInProgress,
    TResult Function(FormzStatusSubmissionFailure<T> value)? submissionFailure,
    TResult Function(FormzStatusSubmissionSuccess<T> value)? submissionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FormzStatusInitial<T> implements FormzStatus<T> {
  const factory FormzStatusInitial() = _$FormzStatusInitial<T>;
}

/// @nodoc
abstract class _$$FormzStatusSubmissionInProgressCopyWith<T, $Res> {
  factory _$$FormzStatusSubmissionInProgressCopyWith(
          _$FormzStatusSubmissionInProgress<T> value,
          $Res Function(_$FormzStatusSubmissionInProgress<T>) then) =
      __$$FormzStatusSubmissionInProgressCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FormzStatusSubmissionInProgressCopyWithImpl<T, $Res>
    extends _$FormzStatusCopyWithImpl<T, $Res>
    implements _$$FormzStatusSubmissionInProgressCopyWith<T, $Res> {
  __$$FormzStatusSubmissionInProgressCopyWithImpl(
      _$FormzStatusSubmissionInProgress<T> _value,
      $Res Function(_$FormzStatusSubmissionInProgress<T>) _then)
      : super(_value, (v) => _then(v as _$FormzStatusSubmissionInProgress<T>));

  @override
  _$FormzStatusSubmissionInProgress<T> get _value =>
      super._value as _$FormzStatusSubmissionInProgress<T>;
}

/// @nodoc

class _$FormzStatusSubmissionInProgress<T>
    implements FormzStatusSubmissionInProgress<T> {
  const _$FormzStatusSubmissionInProgress();

  @override
  String toString() {
    return 'FormzStatus<$T>.submissionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormzStatusSubmissionInProgress<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submissionInProgress,
    required TResult Function(String error) submissionFailure,
    required TResult Function(T? data) submissionSuccess,
  }) {
    return submissionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submissionInProgress,
    TResult Function(String error)? submissionFailure,
    TResult Function(T? data)? submissionSuccess,
  }) {
    return submissionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submissionInProgress,
    TResult Function(String error)? submissionFailure,
    TResult Function(T? data)? submissionSuccess,
    required TResult orElse(),
  }) {
    if (submissionInProgress != null) {
      return submissionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormzStatusInitial<T> value) initial,
    required TResult Function(FormzStatusSubmissionInProgress<T> value)
        submissionInProgress,
    required TResult Function(FormzStatusSubmissionFailure<T> value)
        submissionFailure,
    required TResult Function(FormzStatusSubmissionSuccess<T> value)
        submissionSuccess,
  }) {
    return submissionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusSubmissionInProgress<T> value)?
        submissionInProgress,
    TResult Function(FormzStatusSubmissionFailure<T> value)? submissionFailure,
    TResult Function(FormzStatusSubmissionSuccess<T> value)? submissionSuccess,
  }) {
    return submissionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusSubmissionInProgress<T> value)?
        submissionInProgress,
    TResult Function(FormzStatusSubmissionFailure<T> value)? submissionFailure,
    TResult Function(FormzStatusSubmissionSuccess<T> value)? submissionSuccess,
    required TResult orElse(),
  }) {
    if (submissionInProgress != null) {
      return submissionInProgress(this);
    }
    return orElse();
  }
}

abstract class FormzStatusSubmissionInProgress<T> implements FormzStatus<T> {
  const factory FormzStatusSubmissionInProgress() =
      _$FormzStatusSubmissionInProgress<T>;
}

/// @nodoc
abstract class _$$FormzStatusSubmissionFailureCopyWith<T, $Res> {
  factory _$$FormzStatusSubmissionFailureCopyWith(
          _$FormzStatusSubmissionFailure<T> value,
          $Res Function(_$FormzStatusSubmissionFailure<T>) then) =
      __$$FormzStatusSubmissionFailureCopyWithImpl<T, $Res>;
  $Res call({String error});
}

/// @nodoc
class __$$FormzStatusSubmissionFailureCopyWithImpl<T, $Res>
    extends _$FormzStatusCopyWithImpl<T, $Res>
    implements _$$FormzStatusSubmissionFailureCopyWith<T, $Res> {
  __$$FormzStatusSubmissionFailureCopyWithImpl(
      _$FormzStatusSubmissionFailure<T> _value,
      $Res Function(_$FormzStatusSubmissionFailure<T>) _then)
      : super(_value, (v) => _then(v as _$FormzStatusSubmissionFailure<T>));

  @override
  _$FormzStatusSubmissionFailure<T> get _value =>
      super._value as _$FormzStatusSubmissionFailure<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$FormzStatusSubmissionFailure<T>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormzStatusSubmissionFailure<T>
    implements FormzStatusSubmissionFailure<T> {
  const _$FormzStatusSubmissionFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'FormzStatus<$T>.submissionFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormzStatusSubmissionFailure<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$FormzStatusSubmissionFailureCopyWith<T, _$FormzStatusSubmissionFailure<T>>
      get copyWith => __$$FormzStatusSubmissionFailureCopyWithImpl<T,
          _$FormzStatusSubmissionFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submissionInProgress,
    required TResult Function(String error) submissionFailure,
    required TResult Function(T? data) submissionSuccess,
  }) {
    return submissionFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submissionInProgress,
    TResult Function(String error)? submissionFailure,
    TResult Function(T? data)? submissionSuccess,
  }) {
    return submissionFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submissionInProgress,
    TResult Function(String error)? submissionFailure,
    TResult Function(T? data)? submissionSuccess,
    required TResult orElse(),
  }) {
    if (submissionFailure != null) {
      return submissionFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormzStatusInitial<T> value) initial,
    required TResult Function(FormzStatusSubmissionInProgress<T> value)
        submissionInProgress,
    required TResult Function(FormzStatusSubmissionFailure<T> value)
        submissionFailure,
    required TResult Function(FormzStatusSubmissionSuccess<T> value)
        submissionSuccess,
  }) {
    return submissionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusSubmissionInProgress<T> value)?
        submissionInProgress,
    TResult Function(FormzStatusSubmissionFailure<T> value)? submissionFailure,
    TResult Function(FormzStatusSubmissionSuccess<T> value)? submissionSuccess,
  }) {
    return submissionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusSubmissionInProgress<T> value)?
        submissionInProgress,
    TResult Function(FormzStatusSubmissionFailure<T> value)? submissionFailure,
    TResult Function(FormzStatusSubmissionSuccess<T> value)? submissionSuccess,
    required TResult orElse(),
  }) {
    if (submissionFailure != null) {
      return submissionFailure(this);
    }
    return orElse();
  }
}

abstract class FormzStatusSubmissionFailure<T> implements FormzStatus<T> {
  const factory FormzStatusSubmissionFailure({required final String error}) =
      _$FormzStatusSubmissionFailure<T>;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FormzStatusSubmissionFailureCopyWith<T, _$FormzStatusSubmissionFailure<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormzStatusSubmissionSuccessCopyWith<T, $Res> {
  factory _$$FormzStatusSubmissionSuccessCopyWith(
          _$FormzStatusSubmissionSuccess<T> value,
          $Res Function(_$FormzStatusSubmissionSuccess<T>) then) =
      __$$FormzStatusSubmissionSuccessCopyWithImpl<T, $Res>;
  $Res call({T? data});
}

/// @nodoc
class __$$FormzStatusSubmissionSuccessCopyWithImpl<T, $Res>
    extends _$FormzStatusCopyWithImpl<T, $Res>
    implements _$$FormzStatusSubmissionSuccessCopyWith<T, $Res> {
  __$$FormzStatusSubmissionSuccessCopyWithImpl(
      _$FormzStatusSubmissionSuccess<T> _value,
      $Res Function(_$FormzStatusSubmissionSuccess<T>) _then)
      : super(_value, (v) => _then(v as _$FormzStatusSubmissionSuccess<T>));

  @override
  _$FormzStatusSubmissionSuccess<T> get _value =>
      super._value as _$FormzStatusSubmissionSuccess<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$FormzStatusSubmissionSuccess<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$FormzStatusSubmissionSuccess<T>
    implements FormzStatusSubmissionSuccess<T> {
  const _$FormzStatusSubmissionSuccess({this.data});

  @override
  final T? data;

  @override
  String toString() {
    return 'FormzStatus<$T>.submissionSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormzStatusSubmissionSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$FormzStatusSubmissionSuccessCopyWith<T, _$FormzStatusSubmissionSuccess<T>>
      get copyWith => __$$FormzStatusSubmissionSuccessCopyWithImpl<T,
          _$FormzStatusSubmissionSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submissionInProgress,
    required TResult Function(String error) submissionFailure,
    required TResult Function(T? data) submissionSuccess,
  }) {
    return submissionSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submissionInProgress,
    TResult Function(String error)? submissionFailure,
    TResult Function(T? data)? submissionSuccess,
  }) {
    return submissionSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submissionInProgress,
    TResult Function(String error)? submissionFailure,
    TResult Function(T? data)? submissionSuccess,
    required TResult orElse(),
  }) {
    if (submissionSuccess != null) {
      return submissionSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormzStatusInitial<T> value) initial,
    required TResult Function(FormzStatusSubmissionInProgress<T> value)
        submissionInProgress,
    required TResult Function(FormzStatusSubmissionFailure<T> value)
        submissionFailure,
    required TResult Function(FormzStatusSubmissionSuccess<T> value)
        submissionSuccess,
  }) {
    return submissionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusSubmissionInProgress<T> value)?
        submissionInProgress,
    TResult Function(FormzStatusSubmissionFailure<T> value)? submissionFailure,
    TResult Function(FormzStatusSubmissionSuccess<T> value)? submissionSuccess,
  }) {
    return submissionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormzStatusInitial<T> value)? initial,
    TResult Function(FormzStatusSubmissionInProgress<T> value)?
        submissionInProgress,
    TResult Function(FormzStatusSubmissionFailure<T> value)? submissionFailure,
    TResult Function(FormzStatusSubmissionSuccess<T> value)? submissionSuccess,
    required TResult orElse(),
  }) {
    if (submissionSuccess != null) {
      return submissionSuccess(this);
    }
    return orElse();
  }
}

abstract class FormzStatusSubmissionSuccess<T> implements FormzStatus<T> {
  const factory FormzStatusSubmissionSuccess({final T? data}) =
      _$FormzStatusSubmissionSuccess<T>;

  T? get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FormzStatusSubmissionSuccessCopyWith<T, _$FormzStatusSubmissionSuccess<T>>
      get copyWith => throw _privateConstructorUsedError;
}
