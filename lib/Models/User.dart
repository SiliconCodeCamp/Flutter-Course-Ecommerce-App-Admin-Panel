import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app_admin_panel/Models/ModelConverter/TimeStampConverter.dart';
import 'package:ecommerce_app_admin_panel/Models/User_Address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'User.freezed.dart';
part 'User.g.dart';

@unfreezed
class user with _$user {

  @JsonSerializable(explicitToJson:true)

  factory user({
    required String uid ,
    required String email,

    user_address? useraddress,
    String? phoneNo,
    String? name ,
   @TimeStampConverter() Timestamp? userJoinDate,

  })=_user ;

  factory user.fromJson(Map<String,dynamic> json )=>
      _$userFromJson(json);

}