import 'package:api_manager/api_manager.dart';

class FawryChargeRequestModel extends RequestModel {
  final String merchantReferenceId;
  final String customerMerchantProfileId;
  final String customerName;
  final String customerEmail;
  final String customerMobile;
  final String amount;
  final String signature;
  final String description;

  FawryChargeRequestModel(
      {required this.merchantReferenceId,
      required this.customerMerchantProfileId,
      required this.customerName,
      required this.customerEmail,
      required this.customerMobile,
      required this.amount,
      required this.signature,
      required this.description,
      RequestProgressListener? progressListener})
      : super(progressListener);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['merchant_reference_id'] = this.merchantReferenceId;
    data['customer_merchant_profile_id'] = this.customerMerchantProfileId;
    data['customer_name'] = this.customerName;
    data['customer_email'] = this.customerEmail;
    data['customer_mobile'] = this.customerMobile;
    data['amount'] = this.amount;
    data['signature'] = this.signature;
    data['description'] = this.description;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        merchantReferenceId,
        customerMerchantProfileId,
        customerName,
        customerEmail,
        customerMobile,
        amount,
        signature,
        description
      ];

  @override
  Future<Map<String, dynamic>> toMap() async {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['merchant_reference_id'] = this.merchantReferenceId;
    data['customer_merchant_profile_id'] = this.customerMerchantProfileId;
    data['customer_name'] = this.customerName;
    data['customer_email'] = this.customerEmail;
    data['customer_mobile'] = this.customerMobile;
    data['amount'] = this.amount;
    data['signature'] = this.signature;
    data['description'] = this.description;
    return data;
  }
}
