import 'dart:math';

import 'package:flutter/material.dart';

class ScreenUtil {
  BuildContext? materialContext;
  static ScreenUtil _instance = new ScreenUtil.internal();

  ScreenUtil.internal();

  factory ScreenUtil() => _instance;

  double height = 690, width = 360;
  final _divisor = 400.0;

  double get factorVertical => width / _divisor;

  double get factorHorizontal => height / _divisor;

  double get scalingFactor => min(factorVertical, factorHorizontal);
}

extension ScreenSize on num {
  double get sh => this * ScreenUtil().height;

  double get sw => this * ScreenUtil().width;

  double get sp => this * ScreenUtil().scalingFactor;
}
