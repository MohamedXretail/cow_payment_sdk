import 'package:api_manager/failures.dart';
import 'package:cowpay/core/usecase/usecase.dart';
import 'package:cowpay/cowpay/domain/entities/credit_card_entity.dart';
import 'package:cowpay/cowpay/domain/repositories/cowpay_repository.dart';
import 'package:dartz/dartz.dart';

class CreditCardUseCase implements UseCase<CreditCardEntity, dynamic> {
  final CowpayRepository repository;

  CreditCardUseCase({required this.repository});

  @override
  Future<Either<Failure, CreditCardEntity>> call(params) {
    return repository.creditCardCharge(creditCardRequestModel: params);
  }
}
