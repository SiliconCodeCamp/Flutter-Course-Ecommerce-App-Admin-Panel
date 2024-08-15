// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$userImpl _$$userImplFromJson(Map<String, dynamic> json) => _$userImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      useraddress: json['useraddress'] == null
          ? null
          : user_address.fromJson(json['useraddress'] as Map<String, dynamic>),
      phoneNo: json['phoneNo'] as String?,
      name: json['name'] as String?,
      userJoinDate: _$JsonConverterFromJson<Timestamp, Timestamp>(
          json['userJoinDate'], const TimeStampConverter().fromJson),
    );

Map<String, dynamic> _$$userImplToJson(_$userImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'useraddress': instance.useraddress?.toJson(),
      'phoneNo': instance.phoneNo,
      'name': instance.name,
      'userJoinDate': _$JsonConverterToJson<Timestamp, Timestamp>(
          instance.userJoinDate, const TimeStampConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
