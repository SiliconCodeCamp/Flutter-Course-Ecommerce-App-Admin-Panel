import 'package:freezed_annotation/freezed_annotation.dart';

part 'User_Address.freezed.dart';
part 'User_Address.g.dart';

@unfreezed
class user_address with _$user_address {

  @JsonSerializable(explicitToJson:true)
  factory user_address({

    required String streetAddress ,
    required String city ,
    required String postcode,
})=_user_address ;

  factory user_address.fromJson(Map<String,dynamic> json )=>
  _$user_addressFromJson(json);

}