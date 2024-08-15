// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User_Address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$user_addressImpl _$$user_addressImplFromJson(Map<String, dynamic> json) =>
    _$user_addressImpl(
      streetAddress: json['streetAddress'] as String,
      city: json['city'] as String,
      postcode: json['postcode'] as String,
    );

Map<String, dynamic> _$$user_addressImplToJson(_$user_addressImpl instance) =>
    <String, dynamic>{
      'streetAddress': instance.streetAddress,
      'city': instance.city,
      'postcode': instance.postcode,
    };
