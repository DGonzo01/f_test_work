import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_model.freezed.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    required String fullName,
    required String email,
    required String phone,
    required String country,
    required String city,
    required String postcode,
  }) = _OrderModel;
}
