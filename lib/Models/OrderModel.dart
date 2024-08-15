import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app_admin_panel/Models/ModelConverter/TimeStampConverter.dart';
import 'package:ecommerce_app_admin_panel/Models/User.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'CartModel.dart';

part 'OrderModel.freezed.dart';
part 'OrderModel.g.dart';

@unfreezed
class OrderModel with _$OrderModel{

  @JsonSerializable(explicitToJson:true)

  factory OrderModel ({
    required String orderId,
    required user appuser ,
    required String oderStatus,
    required String paymentMethod,
    required num totalAmount,
    @TimeStampConverter() required Timestamp orderDate,
    required List<cartModel> itemsDetails,
})= _OrderModel;

  factory OrderModel.fromJson(Map<String,dynamic> json)=>
      _$OrderModelFromJson(json);


}