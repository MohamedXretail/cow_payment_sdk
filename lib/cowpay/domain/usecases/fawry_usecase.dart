import 'package:api_manager/failures.dart';
import 'package:cowpay/core/usecase/usecase.dart';
import 'package:cowpay/cowpay/domain/entities/fawry_entity.dart';
import 'package:cowpay/cowpay/domain/repositories/cowpay_repository.dart';
import 'package:dartz/dartz.dart';

class FawryUseCase implements UseCase<FawryEntity, dynamic> {
  final CowpayRepository repository;

  FawryUseCase({required this.repository});

  @override
  Future<Either<Failure, FawryEntity>> call(params) async {
    return await repository.fawryCharge(fawryRequestModel: params);
  }
}
