// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed_data_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginObject {
  String get userName => throw _privateConstructorUsedError;

  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginObjectCopyWith<LoginObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginObjectCopyWith<$Res> {
  factory $LoginObjectCopyWith(
          LoginObject value, $Res Function(LoginObject) then) =
      _$LoginObjectCopyWithImpl<$Res>;

  $Res call({String userName, String password});
}

/// @nodoc
class _$LoginObjectCopyWithImpl<$Res> implements $LoginObjectCopyWith<$Res> {
  _$LoginObjectCopyWithImpl(this._value, this._then);

  final LoginObject _value;

  // ignore: unused_field
  final $Res Function(LoginObject) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_loginObjectCopyWith<$Res>
    implements $LoginObjectCopyWith<$Res> {
  factory _$$_loginObjectCopyWith(
          _$_loginObject value, $Res Function(_$_loginObject) then) =
      __$$_loginObjectCopyWithImpl<$Res>;

  @override
  $Res call({String userName, String password});
}

/// @nodoc
class __$$_loginObjectCopyWithImpl<$Res> extends _$LoginObjectCopyWithImpl<$Res>
    implements _$$_loginObjectCopyWith<$Res> {
  __$$_loginObjectCopyWithImpl(
      _$_loginObject _value, $Res Function(_$_loginObject) _then)
      : super(_value, (v) => _then(v as _$_loginObject));

  @override
  _$_loginObject get _value => super._value as _$_loginObject;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_loginObject(
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_loginObject implements _loginObject {
  _$_loginObject(this.userName, this.password);

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginObject(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loginObject &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_loginObjectCopyWith<_$_loginObject> get copyWith =>
      __$$_loginObjectCopyWithImpl<_$_loginObject>(this, _$identity);
}

abstract class _loginObject implements LoginObject {
  factory _loginObject(final String userName, final String password) =
      _$_loginObject;

  @override
  String get userName;

  @override
  String get password;

  @override
  @JsonKey(ignore: true)
  _$$_loginObjectCopyWith<_$_loginObject> get copyWith =>
      throw _privateConstructorUsedError;
}
