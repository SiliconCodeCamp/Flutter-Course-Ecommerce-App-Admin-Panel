// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  Brand get brand => throw _privateConstructorUsedError;
  set brand(Brand value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  set model(String value) => throw _privateConstructorUsedError;
  String get avilableSizes => throw _privateConstructorUsedError;
  set avilableSizes(String value) => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  set price(num value) => throw _privateConstructorUsedError;
  num get inStock => throw _privateConstructorUsedError;
  set inStock(num value) => throw _privateConstructorUsedError;
  num get avgRating => throw _privateConstructorUsedError;
  set avgRating(num value) => throw _privateConstructorUsedError;
  num get discount => throw _privateConstructorUsedError;
  set discount(num value) => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;
  imageModel get thumbnail => throw _privateConstructorUsedError;
  set thumbnail(imageModel value) => throw _privateConstructorUsedError;
  List<imageModel> get additionalimage => throw _privateConstructorUsedError;
  set additionalimage(List<imageModel> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String? id,
      Brand brand,
      String type,
      String model,
      String avilableSizes,
      num price,
      num inStock,
      num avgRating,
      num discount,
      String? description,
      imageModel thumbnail,
      List<imageModel> additionalimage});

  $imageModelCopyWith<$Res> get thumbnail;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brand = null,
    Object? type = null,
    Object? model = null,
    Object? avilableSizes = null,
    Object? price = null,
    Object? inStock = null,
    Object? avgRating = null,
    Object? discount = null,
    Object? description = freezed,
    Object? thumbnail = null,
    Object? additionalimage = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      avilableSizes: null == avilableSizes
          ? _value.avilableSizes
          : avilableSizes // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as num,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as num,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as imageModel,
      additionalimage: null == additionalimage
          ? _value.additionalimage
          : additionalimage // ignore: cast_nullable_to_non_nullable
              as List<imageModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $imageModelCopyWith<$Res> get thumbnail {
    return $imageModelCopyWith<$Res>(_value.thumbnail, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      Brand brand,
      String type,
      String model,
      String avilableSizes,
      num price,
      num inStock,
      num avgRating,
      num discount,
      String? description,
      imageModel thumbnail,
      List<imageModel> additionalimage});

  @override
  $imageModelCopyWith<$Res> get thumbnail;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brand = null,
    Object? type = null,
    Object? model = null,
    Object? avilableSizes = null,
    Object? price = null,
    Object? inStock = null,
    Object? avgRating = null,
    Object? discount = null,
    Object? description = freezed,
    Object? thumbnail = null,
    Object? additionalimage = null,
  }) {
    return _then(_$ItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      avilableSizes: null == avilableSizes
          ? _value.avilableSizes
          : avilableSizes // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as num,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as num,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as imageModel,
      additionalimage: null == additionalimage
          ? _value.additionalimage
          : additionalimage // ignore: cast_nullable_to_non_nullable
              as List<imageModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ItemImpl implements _Item {
  _$ItemImpl(
      {this.id,
      required this.brand,
      required this.type,
      required this.model,
      required this.avilableSizes,
      required this.price,
      required this.inStock,
      required this.avgRating,
      required this.discount,
      this.description,
      required this.thumbnail,
      required this.additionalimage});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  String? id;
  @override
  Brand brand;
  @override
  String type;
  @override
  String model;
  @override
  String avilableSizes;
  @override
  num price;
  @override
  num inStock;
  @override
  num avgRating;
  @override
  num discount;
  @override
  String? description;
  @override
  imageModel thumbnail;
  @override
  List<imageModel> additionalimage;

  @override
  String toString() {
    return 'Item(id: $id, brand: $brand, type: $type, model: $model, avilableSizes: $avilableSizes, price: $price, inStock: $inStock, avgRating: $avgRating, discount: $discount, description: $description, thumbnail: $thumbnail, additionalimage: $additionalimage)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  factory _Item(
      {String? id,
      required Brand brand,
      required String type,
      required String model,
      required String avilableSizes,
      required num price,
      required num inStock,
      required num avgRating,
      required num discount,
      String? description,
      required imageModel thumbnail,
      required List<imageModel> additionalimage}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  Brand get brand;
  set brand(Brand value);
  @override
  String get type;
  set type(String value);
  @override
  String get model;
  set model(String value);
  @override
  String get avilableSizes;
  set avilableSizes(String value);
  @override
  num get price;
  set price(num value);
  @override
  num get inStock;
  set inStock(num value);
  @override
  num get avgRating;
  set avgRating(num value);
  @override
  num get discount;
  set discount(num value);
  @override
  String? get description;
  set description(String? value);
  @override
  imageModel get thumbnail;
  set thumbnail(imageModel value);
  @override
  List<imageModel> get additionalimage;
  set additionalimage(List<imageModel> value);
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
