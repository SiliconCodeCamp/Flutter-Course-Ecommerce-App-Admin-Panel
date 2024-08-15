import 'package:freezed_annotation/freezed_annotation.dart';

part 'CartModel.freezed.dart';
part 'CartModel.g.dart';

@unfreezed
class cartModel with _$cartModel{

  factory cartModel({
    required String itemId,
    required String itemModel,
    required num price ,
    required String imageUrl,
    @Default(1)  num quantity,

})= _cartModel ;

  factory cartModel.fromJson(Map<String,dynamic> json) =>
      _$cartModelFromJson(json);

}