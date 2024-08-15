// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      id: json['id'] as String?,
      brand: Brand.fromJson(json['brand'] as Map<String, dynamic>),
      type: json['type'] as String,
      model: json['model'] as String,
      avilableSizes: json['avilableSizes'] as String,
      price: json['price'] as num,
      inStock: json['inStock'] as num,
      avgRating: json['avgRating'] as num,
      discount: json['discount'] as num,
      description: json['description'] as String?,
      thumbnail: imageModel.fromJson(json['thumbnail'] as Map<String, dynamic>),
      additionalimage: (json['additionalimage'] as List<dynamic>)
          .map((e) => imageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand.toJson(),
      'type': instance.type,
      'model': instance.model,
      'avilableSizes': instance.avilableSizes,
      'price': instance.price,
      'inStock': instance.inStock,
      'avgRating': instance.avgRating,
      'discount': instance.discount,
      'description': instance.description,
      'thumbnail': instance.thumbnail.toJson(),
      'additionalimage':
          instance.additionalimage.map((e) => e.toJson()).toList(),
    };
