import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_Model.freezed.dart';
part 'image_Model.g.dart';


@unfreezed
class imageModel with _$imageModel {
  @JsonSerializable(explicitToJson: true)

  factory imageModel ({
    required String imageName ,
    required String DricectoryName ,
    required String DownlaodUrl ,

  }) = _imageModel ;

  factory imageModel.fromJson(Map<String,dynamic> json ) =>
      _$imageModelFromJson(json);


}


