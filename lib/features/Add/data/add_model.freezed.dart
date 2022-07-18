// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddModel _$AddModelFromJson(Map<String, dynamic> json) {
  return _AddModel.fromJson(json);
}

/// @nodoc
mixin _$AddModel {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddModelCopyWith<AddModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddModelCopyWith<$Res> {
  factory $AddModelCopyWith(AddModel value, $Res Function(AddModel) then) =
      _$AddModelCopyWithImpl<$Res>;
  $Res call({String title, String subTitle, int id});
}

/// @nodoc
class _$AddModelCopyWithImpl<$Res> implements $AddModelCopyWith<$Res> {
  _$AddModelCopyWithImpl(this._value, this._then);

  final AddModel _value;
  // ignore: unused_field
  final $Res Function(AddModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_AddModelCopyWith<$Res> implements $AddModelCopyWith<$Res> {
  factory _$$_AddModelCopyWith(
          _$_AddModel value, $Res Function(_$_AddModel) then) =
      __$$_AddModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, String subTitle, int id});
}

/// @nodoc
class __$$_AddModelCopyWithImpl<$Res> extends _$AddModelCopyWithImpl<$Res>
    implements _$$_AddModelCopyWith<$Res> {
  __$$_AddModelCopyWithImpl(
      _$_AddModel _value, $Res Function(_$_AddModel) _then)
      : super(_value, (v) => _then(v as _$_AddModel));

  @override
  _$_AddModel get _value => super._value as _$_AddModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_AddModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddModel implements _AddModel {
  _$_AddModel({required this.title, required this.subTitle, required this.id});

  factory _$_AddModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddModelFromJson(json);

  @override
  final String title;
  @override
  final String subTitle;
  @override
  final int id;

  @override
  String toString() {
    return 'AddModel(title: $title, subTitle: $subTitle, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subTitle, subTitle) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subTitle),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_AddModelCopyWith<_$_AddModel> get copyWith =>
      __$$_AddModelCopyWithImpl<_$_AddModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddModelToJson(this);
  }
}

abstract class _AddModel implements AddModel {
  factory _AddModel(
      {required final String title,
      required final String subTitle,
      required final int id}) = _$_AddModel;

  factory _AddModel.fromJson(Map<String, dynamic> json) = _$_AddModel.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subTitle => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddModelCopyWith<_$_AddModel> get copyWith =>
      throw _privateConstructorUsedError;
}
