library cowpay;

import 'dart:convert';

import 'package:api_manager/api_manager.dart';
import 'package:crypto/crypto.dart';

import 'enum_models.dart';

export 'package:cowpay/core/helpers/enum_models.dart';

class CowpayHelper {
  static final CowpayHelper _instance = CowpayHelper._internal();

  factory CowpayHelper() {
    return _instance;
  }

  String? _merchantCode;
  String? _merchantHash;
  static CowpayEnvironment? activeEnvironment;
  static String? token;

  CowpayHelper._internal();

  void init({
    required CowpayEnvironment cowpayEnvironment,
    required String token,
    required String merchantCode,
    required String merchantHash,
  }) {
    activeEnvironment = cowpayEnvironment;
    CowpayHelper.token = token;
    this._merchantCode = merchantCode;
    this._merchantHash = merchantHash;
    BaseRequestDefaults.instance.setBaseUrl(
        activeEnvironment?.baseUrl ?? CowpayEnvironment.staging.baseUrl);
    BaseRequestDefaults.instance.setToken(token);
  }

  static CowpayHelper get instance => _instance;

  String generateSignature(String merchantReferenceId,
      String customerMerchantProfileId, String amount) {
    var paramList = [
      this._merchantCode,
      merchantReferenceId,
      customerMerchantProfileId,
      amount,
      this._merchantHash
    ];

    String concatenated = paramList.join("");
    String res = sha256.convert(utf8.encode(concatenated)).toString();
    return res;
  }
}
