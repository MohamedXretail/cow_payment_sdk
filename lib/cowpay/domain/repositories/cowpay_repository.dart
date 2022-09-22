import 'package:api_manager/failures.dart';
import 'package:cowpay/cowpay/data/models/cash_collection_request_model.dart';
import 'package:cowpay/cowpay/data/models/cash_collection_response_model.dart';
import 'package:cowpay/cowpay/data/models/credit_card_request_model.dart';
import 'package:cowpay/cowpay/data/models/fawry_request_model.dart';
import 'package:cowpay/cowpay/domain/entities/credit_card_entity.dart';
import 'package:cowpay/cowpay/domain/entities/fawry_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CowpayRepository {
  Future<Either<Failure, FawryEntity>> fawryCharge(
      {required FawryChargeRequestModel fawryRequestModel});
  Future<Either<Failure, CreditCardEntity>> creditCardCharge(
      {required CreditCardChargeRequestModel creditCardRequestModel});
  Future<Either<Failure, CashCollectionResponseModel>> cashCollectionCharge(
      {required CashCollectionRequestModel cashCollectionRequestModel});
}
