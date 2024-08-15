
import 'package:ecommerce_app_admin_panel/Models/Brand_Model.dart';
import 'package:ecommerce_app_admin_panel/Models/image_Model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Items.freezed.dart';
part 'Items.g.dart';

@unfreezed

class Item with _$Item {
  @JsonSerializable(explicitToJson: true)
  factory Item ({
    String? id ,
    required Brand brand,
    required String type ,
    required String model,
    required String avilableSizes ,
    required num price ,
    required num inStock ,
    required num avgRating ,
    required num discount ,
    String? description ,
    required imageModel thumbnail ,
    required List<imageModel> additionalimage

}) = _Item ;

  factory Item.fromJson(Map<String,dynamic> json ) =>
      _$ItemFromJson(json);


}