// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'User_Address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

user_address _$user_addressFromJson(Map<String, dynamic> json) {
  return _user_address.fromJson(json);
}

/// @nodoc
mixin _$user_address {
  String get streetAddress => throw _privateConstructorUsedError;
  set streetAddress(String value) => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  set city(String value) => throw _privateConstructorUsedError;
  String get postcode => throw _privateConstructorUsedError;
  set postcode(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $user_addressCopyWith<user_address> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $user_addressCopyWith<$Res> {
  factory $user_addressCopyWith(
          user_address value, $Res Function(user_address) then) =
      _$user_addressCopyWithImpl<$Res, user_address>;
  @useResult
  $Res call({String streetAddress, String city, String postcode});
}

/// @nodoc
class _$user_addressCopyWithImpl<$Res, $Val extends user_address>
    implements $user_addressCopyWith<$Res> {
  _$user_addressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetAddress = null,
    Object? city = null,
    Object? postcode = null,
  }) {
    return _then(_value.copyWith(
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$user_addressImplCopyWith<$Res>
    implements $user_addressCopyWith<$Res> {
  factory _$$user_addressImplCopyWith(
          _$user_addressImpl value, $Res Function(_$user_addressImpl) then) =
      __$$user_addressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String streetAddress, String city, String postcode});
}

/// @nodoc
class __$$user_addressImplCopyWithImpl<$Res>
    extends _$user_addressCopyWithImpl<$Res, _$user_addressImpl>
    implements _$$user_addressImplCopyWith<$Res> {
  __$$user_addressImplCopyWithImpl(
      _$user_addressImpl _value, $Res Function(_$user_addressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetAddress = null,
    Object? city = null,
    Object? postcode = null,
  }) {
    return _then(_$user_addressImpl(
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$user_addressImpl implements _user_address {
  _$user_addressImpl(
      {required this.streetAddress,
      required this.city,
      required this.postcode});

  factory _$user_addressImpl.fromJson(Map<String, dynamic> json) =>
      _$$user_addressImplFromJson(json);

  @override
  String streetAddress;
  @override
  String city;
  @override
  String postcode;

  @override
  String toString() {
    return 'user_address(streetAddress: $streetAddress, city: $city, postcode: $postcode)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$user_addressImplCopyWith<_$user_addressImpl> get copyWith =>
      __$$user_addressImplCopyWithImpl<_$user_addressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$user_addressImplToJson(
      this,
    );
  }
}

abstract class _user_address implements user_address {
  factory _user_address(
      {required String streetAddress,
      required String city,
      required String postcode}) = _$user_addressImpl;

  factory _user_address.fromJson(Map<String, dynamic> json) =
      _$user_addressImpl.fromJson;

  @override
  String get streetAddress;
  set streetAddress(String value);
  @override
  String get city;
  set city(String value);
  @override
  String get postcode;
  set postcode(String value);
  @override
  @JsonKey(ignore: true)
  _$$user_addressImplCopyWith<_$user_addressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
