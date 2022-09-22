import 'package:api_manager/api_manager.dart';
import 'package:cowpay/core/constants/network/urls_data.dart';
import 'package:cowpay/cowpay/data/models/cash_collection_request_model.dart';

class CashCollectionChargeRequest with Request, PostRequest {
  const CashCollectionChargeRequest(this.requestModel);

  @override
  final CashCollectionRequestModel requestModel;

  @override
  String get path => UrlsData.fawryUrl;
}
