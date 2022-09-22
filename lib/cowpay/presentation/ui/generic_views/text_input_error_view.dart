import 'package:cowpay/core/helpers/screen_size.dart';
import 'package:flutter/material.dart';

class TextInputErrorView extends StatelessWidget {
  final String? errorMessage;

  const TextInputErrorView({/*Key key, */ this.errorMessage})
      : super(/*key: key*/);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 0.007.sh),
        padding:
            EdgeInsets.symmetric(horizontal: (0.02.sw), vertical: 0.007.sh),
        width: 1.sw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7.sp)),
            color: Colors.red),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white)),
                margin: EdgeInsetsDirectional.only(end: (0.02.sw)),
                child: Icon(
                  Icons.close_rounded,
                  color: Colors.white,
                  size: (10.sp),
                )),
            FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(errorMessage ?? "",
                    style: TextStyle(color: Colors.black, fontSize: 13.sp))),
          ],
        ));
  }
}
