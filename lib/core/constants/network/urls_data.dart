class UrlsData {
  static final UrlsData _instance = UrlsData._internal();

  factory UrlsData() {
    return _instance;
  }
  UrlsData._internal();

  static const String host_production = "https://cowpay.me";
  static const String host_staging = "https://staging.cowpay.me";

  static const basicUrl = '/api/v2/';

  //region Fawry
  static final fawryUrl = basicUrl + 'charge/fawry';

  //endregion

  //region Credit Card
  static final creditCardUrl = basicUrl + 'charge/card/direct';

  //endregion

  //region Cash Collection
  static final cashCollectionUrl = basicUrl + 'charge/cash-collection';
//endregion

}
