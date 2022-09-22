import 'package:api_manager/api_manager.dart';
import 'package:cowpay/cowpay/domain/entities/credit_card_entity.dart';
import 'package:flutter/foundation.dart';

class CreditCardResponseModel extends CreditCardEntity {

  CreditCardResponseModel(
      {
        @required success,
        @required statusCode,
        @required statusDescription,
        @required type,
        @required threeDSecured,
        @required paymentGatewayReferenceId,
        @required merchantReferenceId,
        @required cowpayReferenceId,
        @required token})
      : super(
          success: success,
          statusCode: statusCode,
          statusDescription: statusDescription,
          type: type,
          threeDSecured: threeDSecured,
          paymentGatewayReferenceId: paymentGatewayReferenceId,
          merchantReferenceId: merchantReferenceId,
          cowpayReferenceId: cowpayReferenceId,
          token: token,
        );

  factory CreditCardResponseModel.fromJson(Map<String, dynamic> json) {
    return CreditCardResponseModel(
      success: json['success'],
      statusCode: json['status_code'],
      statusDescription: json['status_description'],
      type: json['type'],
      paymentGatewayReferenceId: json['payment_gateway_reference_id'],
      cowpayReferenceId: json['cowpay_reference_id'],
      merchantReferenceId: json['merchant_reference_id'],
      threeDSecured: json['three_d_secured'] ?? false,
      token: json['token'],
    );
  }
}
