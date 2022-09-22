import 'package:cowpay/core/helpers/screen_size.dart';
import 'package:flutter/material.dart';

class ButtonLoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      width: deviceSize.width * 0.14,
      height: 0.06.sh,
      child: Center(
        child: CircularProgressIndicator(
          color: Color.fromRGBO(24, 128, 64, 1),
        ),
      ),
    );
  }
}
