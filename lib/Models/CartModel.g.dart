// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CartModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$cartModelImpl _$$cartModelImplFromJson(Map<String, dynamic> json) =>
    _$cartModelImpl(
      itemId: json['itemId'] as String,
      itemModel: json['itemModel'] as String,
      price: json['price'] as num,
      imageUrl: json['imageUrl'] as String,
      quantity: json['quantity'] as num? ?? 1,
    );

Map<String, dynamic> _$$cartModelImplToJson(_$cartModelImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemModel': instance.itemModel,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'quantity': instance.quantity,
    };
