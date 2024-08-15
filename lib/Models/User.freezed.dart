// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'User.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

user _$userFromJson(Map<String, dynamic> json) {
  return _user.fromJson(json);
}

/// @nodoc
mixin _$user {
  String get uid => throw _privateConstructorUsedError;
  set uid(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  user_address? get useraddress => throw _privateConstructorUsedError;
  set useraddress(user_address? value) => throw _privateConstructorUsedError;
  String? get phoneNo => throw _privateConstructorUsedError;
  set phoneNo(String? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  @TimeStampConverter()
  Timestamp? get userJoinDate => throw _privateConstructorUsedError;
  @TimeStampConverter()
  set userJoinDate(Timestamp? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $userCopyWith<user> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $userCopyWith<$Res> {
  factory $userCopyWith(user value, $Res Function(user) then) =
      _$userCopyWithImpl<$Res, user>;
  @useResult
  $Res call(
      {String uid,
      String email,
      user_address? useraddress,
      String? phoneNo,
      String? name,
      @TimeStampConverter() Timestamp? userJoinDate});

  $user_addressCopyWith<$Res>? get useraddress;
}

/// @nodoc
class _$userCopyWithImpl<$Res, $Val extends user>
    implements $userCopyWith<$Res> {
  _$userCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? useraddress = freezed,
    Object? phoneNo = freezed,
    Object? name = freezed,
    Object? userJoinDate = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      useraddress: freezed == useraddress
          ? _value.useraddress
          : useraddress // ignore: cast_nullable_to_non_nullable
              as user_address?,
      phoneNo: freezed == phoneNo
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userJoinDate: freezed == userJoinDate
          ? _value.userJoinDate
          : userJoinDate // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $user_addressCopyWith<$Res>? get useraddress {
    if (_value.useraddress == null) {
      return null;
    }

    return $user_addressCopyWith<$Res>(_value.useraddress!, (value) {
      return _then(_value.copyWith(useraddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$userImplCopyWith<$Res> implements $userCopyWith<$Res> {
  factory _$$userImplCopyWith(
          _$userImpl value, $Res Function(_$userImpl) then) =
      __$$userImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      user_address? useraddress,
      String? phoneNo,
      String? name,
      @TimeStampConverter() Timestamp? userJoinDate});

  @override
  $user_addressCopyWith<$Res>? get useraddress;
}

/// @nodoc
class __$$userImplCopyWithImpl<$Res>
    extends _$userCopyWithImpl<$Res, _$userImpl>
    implements _$$userImplCopyWith<$Res> {
  __$$userImplCopyWithImpl(_$userImpl _value, $Res Function(_$userImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? useraddress = freezed,
    Object? phoneNo = freezed,
    Object? name = freezed,
    Object? userJoinDate = freezed,
  }) {
    return _then(_$userImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      useraddress: freezed == useraddress
          ? _value.useraddress
          : useraddress // ignore: cast_nullable_to_non_nullable
              as user_address?,
      phoneNo: freezed == phoneNo
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userJoinDate: freezed == userJoinDate
          ? _value.userJoinDate
          : userJoinDate // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$userImpl implements _user {
  _$userImpl(
      {required this.uid,
      required this.email,
      this.useraddress,
      this.phoneNo,
      this.name,
      @TimeStampConverter() this.userJoinDate});

  factory _$userImpl.fromJson(Map<String, dynamic> json) =>
      _$$userImplFromJson(json);

  @override
  String uid;
  @override
  String email;
  @override
  user_address? useraddress;
  @override
  String? phoneNo;
  @override
  String? name;
  @override
  @TimeStampConverter()
  Timestamp? userJoinDate;

  @override
  String toString() {
    return 'user(uid: $uid, email: $email, useraddress: $useraddress, phoneNo: $phoneNo, name: $name, userJoinDate: $userJoinDate)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userImplCopyWith<_$userImpl> get copyWith =>
      __$$userImplCopyWithImpl<_$userImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$userImplToJson(
      this,
    );
  }
}

abstract class _user implements user {
  factory _user(
      {required String uid,
      required String email,
      user_address? useraddress,
      String? phoneNo,
      String? name,
      @TimeStampConverter() Timestamp? userJoinDate}) = _$userImpl;

  factory _user.fromJson(Map<String, dynamic> json) = _$userImpl.fromJson;

  @override
  String get uid;
  set uid(String value);
  @override
  String get email;
  set email(String value);
  @override
  user_address? get useraddress;
  set useraddress(user_address? value);
  @override
  String? get phoneNo;
  set phoneNo(String? value);
  @override
  String? get name;
  set name(String? value);
  @override
  @TimeStampConverter()
  Timestamp? get userJoinDate;
  @TimeStampConverter()
  set userJoinDate(Timestamp? value);
  @override
  @JsonKey(ignore: true)
  _$$userImplCopyWith<_$userImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
