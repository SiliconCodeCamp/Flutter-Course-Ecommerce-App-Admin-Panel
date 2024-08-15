// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'OrderModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  String get orderId => throw _privateConstructorUsedError;
  set orderId(String value) => throw _privateConstructorUsedError;
  user get appuser => throw _privateConstructorUsedError;
  set appuser(user value) => throw _privateConstructorUsedError;
  String get oderStatus => throw _privateConstructorUsedError;
  set oderStatus(String value) => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  set paymentMethod(String value) => throw _privateConstructorUsedError;
  num get totalAmount => throw _privateConstructorUsedError;
  set totalAmount(num value) => throw _privateConstructorUsedError;
  @TimeStampConverter()
  Timestamp get orderDate => throw _privateConstructorUsedError;
  @TimeStampConverter()
  set orderDate(Timestamp value) => throw _privateConstructorUsedError;
  List<cartModel> get itemsDetails => throw _privateConstructorUsedError;
  set itemsDetails(List<cartModel> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {String orderId,
      user appuser,
      String oderStatus,
      String paymentMethod,
      num totalAmount,
      @TimeStampConverter() Timestamp orderDate,
      List<cartModel> itemsDetails});

  $userCopyWith<$Res> get appuser;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? appuser = null,
    Object? oderStatus = null,
    Object? paymentMethod = null,
    Object? totalAmount = null,
    Object? orderDate = null,
    Object? itemsDetails = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      appuser: null == appuser
          ? _value.appuser
          : appuser // ignore: cast_nullable_to_non_nullable
              as user,
      oderStatus: null == oderStatus
          ? _value.oderStatus
          : oderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      itemsDetails: null == itemsDetails
          ? _value.itemsDetails
          : itemsDetails // ignore: cast_nullable_to_non_nullable
              as List<cartModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $userCopyWith<$Res> get appuser {
    return $userCopyWith<$Res>(_value.appuser, (value) {
      return _then(_value.copyWith(appuser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      user appuser,
      String oderStatus,
      String paymentMethod,
      num totalAmount,
      @TimeStampConverter() Timestamp orderDate,
      List<cartModel> itemsDetails});

  @override
  $userCopyWith<$Res> get appuser;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? appuser = null,
    Object? oderStatus = null,
    Object? paymentMethod = null,
    Object? totalAmount = null,
    Object? orderDate = null,
    Object? itemsDetails = null,
  }) {
    return _then(_$OrderModelImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      appuser: null == appuser
          ? _value.appuser
          : appuser // ignore: cast_nullable_to_non_nullable
              as user,
      oderStatus: null == oderStatus
          ? _value.oderStatus
          : oderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      itemsDetails: null == itemsDetails
          ? _value.itemsDetails
          : itemsDetails // ignore: cast_nullable_to_non_nullable
              as List<cartModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OrderModelImpl implements _OrderModel {
  _$OrderModelImpl(
      {required this.orderId,
      required this.appuser,
      required this.oderStatus,
      required this.paymentMethod,
      required this.totalAmount,
      @TimeStampConverter() required this.orderDate,
      required this.itemsDetails});

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  String orderId;
  @override
  user appuser;
  @override
  String oderStatus;
  @override
  String paymentMethod;
  @override
  num totalAmount;
  @override
  @TimeStampConverter()
  Timestamp orderDate;
  @override
  List<cartModel> itemsDetails;

  @override
  String toString() {
    return 'OrderModel(orderId: $orderId, appuser: $appuser, oderStatus: $oderStatus, paymentMethod: $paymentMethod, totalAmount: $totalAmount, orderDate: $orderDate, itemsDetails: $itemsDetails)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  factory _OrderModel(
      {required String orderId,
      required user appuser,
      required String oderStatus,
      required String paymentMethod,
      required num totalAmount,
      @TimeStampConverter() required Timestamp orderDate,
      required List<cartModel> itemsDetails}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  String get orderId;
  set orderId(String value);
  @override
  user get appuser;
  set appuser(user value);
  @override
  String get oderStatus;
  set oderStatus(String value);
  @override
  String get paymentMethod;
  set paymentMethod(String value);
  @override
  num get totalAmount;
  set totalAmount(num value);
  @override
  @TimeStampConverter()
  Timestamp get orderDate;
  @TimeStampConverter()
  set orderDate(Timestamp value);
  @override
  List<cartModel> get itemsDetails;
  set itemsDetails(List<cartModel> value);
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
