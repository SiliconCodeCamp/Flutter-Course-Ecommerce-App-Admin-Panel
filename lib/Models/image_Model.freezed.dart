// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_Model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

imageModel _$imageModelFromJson(Map<String, dynamic> json) {
  return _imageModel.fromJson(json);
}

/// @nodoc
mixin _$imageModel {
  String get imageName => throw _privateConstructorUsedError;
  set imageName(String value) => throw _privateConstructorUsedError;
  String get DricectoryName => throw _privateConstructorUsedError;
  set DricectoryName(String value) => throw _privateConstructorUsedError;
  String get DownlaodUrl => throw _privateConstructorUsedError;
  set DownlaodUrl(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $imageModelCopyWith<imageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $imageModelCopyWith<$Res> {
  factory $imageModelCopyWith(
          imageModel value, $Res Function(imageModel) then) =
      _$imageModelCopyWithImpl<$Res, imageModel>;
  @useResult
  $Res call({String imageName, String DricectoryName, String DownlaodUrl});
}

/// @nodoc
class _$imageModelCopyWithImpl<$Res, $Val extends imageModel>
    implements $imageModelCopyWith<$Res> {
  _$imageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageName = null,
    Object? DricectoryName = null,
    Object? DownlaodUrl = null,
  }) {
    return _then(_value.copyWith(
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      DricectoryName: null == DricectoryName
          ? _value.DricectoryName
          : DricectoryName // ignore: cast_nullable_to_non_nullable
              as String,
      DownlaodUrl: null == DownlaodUrl
          ? _value.DownlaodUrl
          : DownlaodUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$imageModelImplCopyWith<$Res>
    implements $imageModelCopyWith<$Res> {
  factory _$$imageModelImplCopyWith(
          _$imageModelImpl value, $Res Function(_$imageModelImpl) then) =
      __$$imageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageName, String DricectoryName, String DownlaodUrl});
}

/// @nodoc
class __$$imageModelImplCopyWithImpl<$Res>
    extends _$imageModelCopyWithImpl<$Res, _$imageModelImpl>
    implements _$$imageModelImplCopyWith<$Res> {
  __$$imageModelImplCopyWithImpl(
      _$imageModelImpl _value, $Res Function(_$imageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageName = null,
    Object? DricectoryName = null,
    Object? DownlaodUrl = null,
  }) {
    return _then(_$imageModelImpl(
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      DricectoryName: null == DricectoryName
          ? _value.DricectoryName
          : DricectoryName // ignore: cast_nullable_to_non_nullable
              as String,
      DownlaodUrl: null == DownlaodUrl
          ? _value.DownlaodUrl
          : DownlaodUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$imageModelImpl with DiagnosticableTreeMixin implements _imageModel {
  _$imageModelImpl(
      {required this.imageName,
      required this.DricectoryName,
      required this.DownlaodUrl});

  factory _$imageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$imageModelImplFromJson(json);

  @override
  String imageName;
  @override
  String DricectoryName;
  @override
  String DownlaodUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'imageModel(imageName: $imageName, DricectoryName: $DricectoryName, DownlaodUrl: $DownlaodUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'imageModel'))
      ..add(DiagnosticsProperty('imageName', imageName))
      ..add(DiagnosticsProperty('DricectoryName', DricectoryName))
      ..add(DiagnosticsProperty('DownlaodUrl', DownlaodUrl));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$imageModelImplCopyWith<_$imageModelImpl> get copyWith =>
      __$$imageModelImplCopyWithImpl<_$imageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$imageModelImplToJson(
      this,
    );
  }
}

abstract class _imageModel implements imageModel {
  factory _imageModel(
      {required String imageName,
      required String DricectoryName,
      required String DownlaodUrl}) = _$imageModelImpl;

  factory _imageModel.fromJson(Map<String, dynamic> json) =
      _$imageModelImpl.fromJson;

  @override
  String get imageName;
  set imageName(String value);
  @override
  String get DricectoryName;
  set DricectoryName(String value);
  @override
  String get DownlaodUrl;
  set DownlaodUrl(String value);
  @override
  @JsonKey(ignore: true)
  _$$imageModelImplCopyWith<_$imageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
