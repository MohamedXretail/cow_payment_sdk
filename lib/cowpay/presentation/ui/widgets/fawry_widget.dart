library cowpay;

import 'package:cowpay/core/helpers/localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FawryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onPanDown: (_) {
        FocusScope.of(context).unfocus();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Localization().localizationMap["fawryPayPlaceholderMessage"],
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
