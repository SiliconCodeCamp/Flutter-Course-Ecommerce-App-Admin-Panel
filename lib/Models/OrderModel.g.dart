// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OrderModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      orderId: json['orderId'] as String,
      appuser: user.fromJson(json['appuser'] as Map<String, dynamic>),
      oderStatus: json['oderStatus'] as String,
      paymentMethod: json['paymentMethod'] as String,
      totalAmount: json['totalAmount'] as num,
      orderDate:
          const TimeStampConverter().fromJson(json['orderDate'] as Timestamp),
      itemsDetails: (json['itemsDetails'] as List<dynamic>)
          .map((e) => cartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'appuser': instance.appuser.toJson(),
      'oderStatus': instance.oderStatus,
      'paymentMethod': instance.paymentMethod,
      'totalAmount': instance.totalAmount,
      'orderDate': const TimeStampConverter().toJson(instance.orderDate),
      'itemsDetails': instance.itemsDetails.map((e) => e.toJson()).toList(),
    };
