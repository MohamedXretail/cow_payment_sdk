import 'package:cowpay/cowpay/domain/entities/fawry_entity.dart';

class FawryResponseModel extends FawryEntity {
  FawryResponseModel(
      {success,
      statusCode,
      statusDescription,
      type,
      paymentGatewayReferenceId,
      merchantReferenceId,
      cowpayReferenceId})
      : super(
          cowpayReferenceId: cowpayReferenceId,
          merchantReferenceId: merchantReferenceId,
          paymentGatewayReferenceId: paymentGatewayReferenceId,
          statusCode: statusCode,
          statusDescription: statusDescription,
          success: success,
          type: type,
        );

  factory FawryResponseModel.fromJson(Map<String, dynamic> json) {
    return FawryResponseModel(
        cowpayReferenceId: json['cowpay_reference_id'],
        merchantReferenceId: json['merchant_reference_id'],
        paymentGatewayReferenceId: json['payment_gateway_reference_id'],
        statusCode: json['status_code'],
        statusDescription: json['status_description'],
        success: json['success'],
        type: json['type']);
  }
}
