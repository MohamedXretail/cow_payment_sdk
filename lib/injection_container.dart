import 'package:api_manager/src/injection_container.dart';
import 'package:cowpay/cowpay/di/cowpay_di.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

void initDependencyInjection() {
  //! Cowpay
  CowpayDI(di);
  //! API Manager
  ApiManagerDI(di);
}
