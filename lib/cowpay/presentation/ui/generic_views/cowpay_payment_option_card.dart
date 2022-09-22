import 'package:cowpay/core/helpers/localization.dart';
import 'package:cowpay/core/helpers/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CowpayPaymentOptionsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0.sp),
      // height: 0.16.sh,
      margin: EdgeInsets.symmetric(horizontal: 0.01.sw),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0.sp),
          border: Border.all(
            color: Colors.grey.withOpacity(0.4),
            width: 1,
          ),
          color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: Color.fromRGBO(24, 128, 64, 1),
                      ),
                      height: 35.sp,
                      width: 60.sp,
                      child: SvgPicture.asset(
                        "assets/00-cow-pay-brand-logo.svg",
                        package: 'cowpay',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Cowpay',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildSvgImage("logos-mastercard.svg"),
                    _buildSvgImage("logos-visa.svg"),
                    _buildSvgImage("fawry-en-1-1.svg"),
                    _buildSvgImage("68-five-tips-for-pci-dss-compliance-1.svg"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            Localization().localizationMap["cowpayPaymentOptionsText"],
            style: TextStyle(color: Color(0xff9B9B9C), fontSize: 15.sp),
          ),
        ],
      ),
    );
  }

  Widget _buildSvgImage(String name) {
    return Expanded(
      child: SvgPicture.asset(
        "assets/$name",
        package: 'cowpay',
      ),
    );
  }
}
