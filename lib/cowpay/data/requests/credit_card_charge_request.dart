import 'package:api_manager/api_manager.dart';
import 'package:cowpay/core/constants/network/urls_data.dart';
import 'package:cowpay/cowpay/data/models/credit_card_request_model.dart';

class CreditCardChargeRequest with Request, PostRequest {
  const CreditCardChargeRequest(this.requestModel);

  @override
  final CreditCardChargeRequestModel requestModel;

  @override
  String get path => UrlsData.creditCardUrl;
}
