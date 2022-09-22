import 'package:api_manager/failures.dart';
import 'package:cowpay/core/usecase/usecase.dart';
import 'package:cowpay/cowpay/data/models/cash_collection_response_model.dart';
import 'package:cowpay/cowpay/domain/repositories/cowpay_repository.dart';
import 'package:dartz/dartz.dart';

class CashCollectionUseCase
    implements UseCase<CashCollectionResponseModel, dynamic> {
  final CowpayRepository repository;

  CashCollectionUseCase({required this.repository});

  @override
  Future<Either<Failure, CashCollectionResponseModel>> call(params) {
    return repository.cashCollectionCharge(cashCollectionRequestModel: params);
  }
}
