// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CartModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

cartModel _$cartModelFromJson(Map<String, dynamic> json) {
  return _cartModel.fromJson(json);
}

/// @nodoc
mixin _$cartModel {
  String get itemId => throw _privateConstructorUsedError;
  set itemId(String value) => throw _privateConstructorUsedError;
  String get itemModel => throw _privateConstructorUsedError;
  set itemModel(String value) => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  set price(num value) => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  set imageUrl(String value) => throw _privateConstructorUsedError;
  num get quantity => throw _privateConstructorUsedError;
  set quantity(num value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $cartModelCopyWith<cartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $cartModelCopyWith<$Res> {
  factory $cartModelCopyWith(cartModel value, $Res Function(cartModel) then) =
      _$cartModelCopyWithImpl<$Res, cartModel>;
  @useResult
  $Res call(
      {String itemId,
      String itemModel,
      num price,
      String imageUrl,
      num quantity});
}

/// @nodoc
class _$cartModelCopyWithImpl<$Res, $Val extends cartModel>
    implements $cartModelCopyWith<$Res> {
  _$cartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemModel = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemModel: null == itemModel
          ? _value.itemModel
          : itemModel // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$cartModelImplCopyWith<$Res>
    implements $cartModelCopyWith<$Res> {
  factory _$$cartModelImplCopyWith(
          _$cartModelImpl value, $Res Function(_$cartModelImpl) then) =
      __$$cartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      String itemModel,
      num price,
      String imageUrl,
      num quantity});
}

/// @nodoc
class __$$cartModelImplCopyWithImpl<$Res>
    extends _$cartModelCopyWithImpl<$Res, _$cartModelImpl>
    implements _$$cartModelImplCopyWith<$Res> {
  __$$cartModelImplCopyWithImpl(
      _$cartModelImpl _value, $Res Function(_$cartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemModel = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? quantity = null,
  }) {
    return _then(_$cartModelImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemModel: null == itemModel
          ? _value.itemModel
          : itemModel // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$cartModelImpl implements _cartModel {
  _$cartModelImpl(
      {required this.itemId,
      required this.itemModel,
      required this.price,
      required this.imageUrl,
      this.quantity = 1});

  factory _$cartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$cartModelImplFromJson(json);

  @override
  String itemId;
  @override
  String itemModel;
  @override
  num price;
  @override
  String imageUrl;
  @override
  @JsonKey()
  num quantity;

  @override
  String toString() {
    return 'cartModel(itemId: $itemId, itemModel: $itemModel, price: $price, imageUrl: $imageUrl, quantity: $quantity)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$cartModelImplCopyWith<_$cartModelImpl> get copyWith =>
      __$$cartModelImplCopyWithImpl<_$cartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$cartModelImplToJson(
      this,
    );
  }
}

abstract class _cartModel implements cartModel {
  factory _cartModel(
      {required String itemId,
      required String itemModel,
      required num price,
      required String imageUrl,
      num quantity}) = _$cartModelImpl;

  factory _cartModel.fromJson(Map<String, dynamic> json) =
      _$cartModelImpl.fromJson;

  @override
  String get itemId;
  set itemId(String value);
  @override
  String get itemModel;
  set itemModel(String value);
  @override
  num get price;
  set price(num value);
  @override
  String get imageUrl;
  set imageUrl(String value);
  @override
  num get quantity;
  set quantity(num value);
  @override
  @JsonKey(ignore: true)
  _$$cartModelImplCopyWith<_$cartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
