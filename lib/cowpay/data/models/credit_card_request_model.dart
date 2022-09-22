import 'package:api_manager/api_manager.dart';

class CreditCardChargeRequestModel extends RequestModel {
  final String merchantReferenceId;
  final String customerMerchantProfileId;
  final String cardNumber;
  final String cvv;
  final String expiryMonth;
  final String expiryYear;
  final String customerName;
  final String customerEmail;
  final String customerMobile;
  final String amount;
  final String signature;
  final String description;
  final String cardHolder;

  CreditCardChargeRequestModel({
    required this.merchantReferenceId,
    required this.customerMerchantProfileId,
    required this.cardNumber,
    required this.cvv,
    required this.expiryMonth,
    required this.expiryYear,
    required this.customerName,
    required this.customerEmail,
    required this.customerMobile,
    required this.amount,
    required this.signature,
    required this.description,
    required this.cardHolder,
    RequestProgressListener? progressListener,
  }) : super(progressListener);

  @override
  List<Object?> get props => [
        merchantReferenceId,
        customerMerchantProfileId,
        cardNumber,
        cvv,
        expiryMonth,
        expiryYear,
        customerName,
        customerEmail,
        customerMobile,
        amount,
        signature,
        description,
        cardHolder,
      ];

  @override
  Future<Map<String, dynamic>> toMap() async {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['merchant_reference_id'] = this.merchantReferenceId;
    data['customer_merchant_profile_id'] = this.customerMerchantProfileId;
    data['card_number'] = this.cardNumber;
    data['cvv'] = this.cvv;
    data['expiry_month'] = this.expiryMonth;
    data['expiry_year'] = this.expiryYear;
    data['customer_name'] = this.customerName;
    data['customer_email'] = this.customerEmail;
    data['customer_mobile'] = this.customerMobile;
    data['amount'] = this.amount;
    data['signature'] = this.signature;
    data['description'] = this.description;
    data['card_holder'] = this.cardHolder;
    return data;
  }
}
