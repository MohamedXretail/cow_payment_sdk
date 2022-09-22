import 'package:api_manager/failures.dart';
import 'package:cowpay/cowpay/data/datasources/remote_data_source.dart';
import 'package:cowpay/cowpay/data/models/cash_collection_request_model.dart';
import 'package:cowpay/cowpay/data/models/cash_collection_response_model.dart';
import 'package:cowpay/cowpay/data/models/credit_card_request_model.dart';
import 'package:cowpay/cowpay/data/models/fawry_request_model.dart';
import 'package:cowpay/cowpay/domain/entities/credit_card_entity.dart';
import 'package:cowpay/cowpay/domain/entities/fawry_entity.dart';
import 'package:cowpay/cowpay/domain/repositories/cowpay_repository.dart';
import 'package:dartz/dartz.dart';

class CowpayRepositoryImpl implements CowpayRepository {
  RemoteDataSource remoteDataSource;

  CowpayRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, FawryEntity>> fawryCharge(
      {required FawryChargeRequestModel fawryRequestModel}) async {
    return await remoteDataSource.fawryCharge(
        fawryRequestModel: fawryRequestModel);
  }

  @override
  Future<Either<Failure, CreditCardEntity>> creditCardCharge(
      {required CreditCardChargeRequestModel creditCardRequestModel}) async {
    return await remoteDataSource.creditCardCharge(
        creditCardRequestModel: creditCardRequestModel);
  }

  @override
  Future<Either<Failure, CashCollectionResponseModel>> cashCollectionCharge(
      {required CashCollectionRequestModel cashCollectionRequestModel}) async {
    return await remoteDataSource.cashCollectionCharge(
        cashCollectionRequestModel: cashCollectionRequestModel);
  }
}
