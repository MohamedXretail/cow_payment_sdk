import 'package:api_manager/api_manager.dart';

class CashCollectionRequestModel extends RequestModel {
  final String merchantReferenceId;
  final String customerMerchantProfileId;
  final String amount;
  final String customerName;
  final String customerEmail;
  final String customerMobile;
  final String address;
  final String district;
  final String apartment;
  final String floor;
  final String signature;
  final String description;
  final String cityCode;

  CashCollectionRequestModel(
      {required this.merchantReferenceId,
      required this.customerMerchantProfileId,
      required this.amount,
      required this.customerName,
      required this.customerEmail,
      required this.customerMobile,
      required this.address,
      required this.district,
      required this.apartment,
      required this.floor,
      required this.signature,
      required this.description,
      required this.cityCode,
      RequestProgressListener? progressListener})
      : super(progressListener);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['merchant_reference_id'] = this.merchantReferenceId;
    data['customer_merchant_profile_id'] = this.customerMerchantProfileId;
    data['amount'] = this.amount;
    data['customer_name'] = this.customerName;
    data['customer_email'] = this.customerEmail;
    data['customer_mobile'] = this.customerMobile;
    data['address'] = this.address;
    data['district'] = this.district;
    data['apartment'] = this.apartment;
    data['floor'] = this.floor;
    data['signature'] = this.signature;
    data['description'] = this.description;
    data['city_code'] = this.cityCode;
    return data;
  }

  @override
  List<Object?> get props => [];

  @override
  Future<Map<String, dynamic>> toMap() async {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['merchant_reference_id'] = this.merchantReferenceId;
    data['customer_merchant_profile_id'] = this.customerMerchantProfileId;
    data['amount'] = this.amount;
    data['customer_name'] = this.customerName;
    data['customer_email'] = this.customerEmail;
    data['customer_mobile'] = this.customerMobile;
    data['address'] = this.address;
    data['district'] = this.district;
    data['apartment'] = this.apartment;
    data['floor'] = this.floor;
    data['signature'] = this.signature;
    data['description'] = this.description;
    data['city_code'] = this.cityCode;
    return data;
  }
}
