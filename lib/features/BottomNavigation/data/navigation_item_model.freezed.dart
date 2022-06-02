// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationItems {
  String get label => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationItemsCopyWith<NavigationItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationItemsCopyWith<$Res> {
  factory $NavigationItemsCopyWith(
          NavigationItems value, $Res Function(NavigationItems) then) =
      _$NavigationItemsCopyWithImpl<$Res>;
  $Res call({String label, IconData icon});
}

/// @nodoc
class _$NavigationItemsCopyWithImpl<$Res>
    implements $NavigationItemsCopyWith<$Res> {
  _$NavigationItemsCopyWithImpl(this._value, this._then);

  final NavigationItems _value;
  // ignore: unused_field
  final $Res Function(NavigationItems) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc
abstract class _$$_NavigationItemsCopyWith<$Res>
    implements $NavigationItemsCopyWith<$Res> {
  factory _$$_NavigationItemsCopyWith(
          _$_NavigationItems value, $Res Function(_$_NavigationItems) then) =
      __$$_NavigationItemsCopyWithImpl<$Res>;
  @override
  $Res call({String label, IconData icon});
}

/// @nodoc
class __$$_NavigationItemsCopyWithImpl<$Res>
    extends _$NavigationItemsCopyWithImpl<$Res>
    implements _$$_NavigationItemsCopyWith<$Res> {
  __$$_NavigationItemsCopyWithImpl(
      _$_NavigationItems _value, $Res Function(_$_NavigationItems) _then)
      : super(_value, (v) => _then(v as _$_NavigationItems));

  @override
  _$_NavigationItems get _value => super._value as _$_NavigationItems;

  @override
  $Res call({
    Object? label = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_NavigationItems(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc

class _$_NavigationItems implements _NavigationItems {
  _$_NavigationItems({required this.label, required this.icon});

  @override
  final String label;
  @override
  final IconData icon;

  @override
  String toString() {
    return 'NavigationItems(label: $label, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationItems &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_NavigationItemsCopyWith<_$_NavigationItems> get copyWith =>
      __$$_NavigationItemsCopyWithImpl<_$_NavigationItems>(this, _$identity);
}

abstract class _NavigationItems implements NavigationItems {
  factory _NavigationItems(
      {required final String label,
      required final IconData icon}) = _$_NavigationItems;

  @override
  String get label => throw _privateConstructorUsedError;
  @override
  IconData get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationItemsCopyWith<_$_NavigationItems> get copyWith =>
      throw _privateConstructorUsedError;
}
