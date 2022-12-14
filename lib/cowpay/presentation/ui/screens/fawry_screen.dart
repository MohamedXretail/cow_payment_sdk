library cowpay;

import 'package:cowpay/core/helpers/cowpay_helper.dart';
import 'package:cowpay/core/helpers/localization.dart';
import 'package:cowpay/core/helpers/screen_size.dart';
import 'package:cowpay/cowpay/data/models/fawry_success_model.dart';
import 'package:cowpay/cowpay/domain/entities/fawry_entity.dart';
import 'package:cowpay/cowpay/presentation/ui/generic_views/button_view.dart';
import 'package:cowpay/cowpay/presentation/ui/generic_views/cowpay_payment_option_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

export 'package:cowpay/core/helpers/enum_models.dart';

class FawryScreen extends StatelessWidget {
  final FawryEntity fawryEntity;

  FawryScreen({required this.fawryEntity});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Localization().localizationCode == LocalizationCode.ar
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: ListView(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 0.20.sh,
                  ),
                  Text(
                    'Fawry Code',
                    style: TextStyle(color: Colors.black, fontSize: 17.sp),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Text(
                    fawryEntity.paymentGatewayReferenceId ?? '',
                    style: TextStyle(
                        color: Color.fromRGBO(24, 128, 64, 1),
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.25.sw),
                    child: ButtonView(
                      fontWeight: FontWeight.w300,
                      // title: 'PAY  $amount EGP',
                      child: Text(Localization().localizationMap["copyCode"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 0.025.sh,
                              color: Colors.white),
                          textScaleFactor: 1),
                      textColor: Colors.white,
                      fontSize: 0.025.sp,
                      backgroundColor:
                          Color.fromRGBO(24, 128, 64, 1).withOpacity(0.86),
                      mainContext: context,
                      // buttonTextStyle: buttonTextStyle,
                      onClickFunction: (context) {
                        Clipboard.setData(ClipboardData(
                                text: fawryEntity.paymentGatewayReferenceId))
                            .then((value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Number Copied')));
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Localization().localizationMap["paymentSteps"],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Text(
                              Localization().localizationMap["FawrySteps1"],
                              style: TextStyle(
                                  color: Color(0xff9B9B9C), fontSize: 15.sp),
                            ),
                            Text(
                              Localization().localizationMap["FawrySteps2"],
                              style: TextStyle(
                                  color: Color(0xff9C9C9D), fontSize: 15.sp),
                            ),
                            Text(
                              "${Localization().localizationMap["FawrySteps3"]}: ${fawryEntity.paymentGatewayReferenceId}",
                              style: TextStyle(
                                  color: Color(0xff9B9B9C), fontSize: 15.sp),
                            ),
                            Text(
                              Localization().localizationMap["FawrySteps4"],
                              style: TextStyle(
                                  color: Color(0xff9B9B9C), fontSize: 15.sp),
                            ),
                            Text(
                              Localization().localizationMap["FawrySteps5"],
                              style: TextStyle(
                                  color: Color(0xff9B9B9C), fontSize: 15.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.25.sw),
                    child: ButtonView(
                      fontWeight: FontWeight.w300,
                      // title: 'PAY  $amount EGP',
                      child: Text(Localization().localizationMap["back"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 0.025.sh,
                              color: Color.fromRGBO(24, 128, 64, 1)),
                          textScaleFactor: 1),
                      textColor: Color.fromRGBO(24, 128, 64, 1),
                      fontSize: 0.025.sp,
                      backgroundColor: Colors.white,
                      borderColor: Color.fromRGBO(24, 128, 64, 1),
                      mainContext: context,
                      // buttonTextStyle: buttonTextStyle,
                      onClickFunction: (context) {
                        // FawrySuccessModel fawrySuccessModel = FawrySuccessModel(
                        //     cowpayReferenceId: fawryEntity.cowpayReferenceId.toString(),
                        //     paymentGatewayReferenceId:
                        //     fawryEntity.paymentGatewayReferenceId,
                        //     merchantReferenceId: fawryEntity.merchantReferenceId);
                        // widget.onFawrySuccess(fawrySuccessModel);
                        // Navigator.pop(context);
                        Navigator.of(context).pop(fawryEntity);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.sp),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.03.sh),
                    child: CowpayPaymentOptionsCard(),
                  ),
                  SizedBox(
                    height: 20.sp,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
