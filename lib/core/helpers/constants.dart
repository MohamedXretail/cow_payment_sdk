import 'package:flutter/material.dart';

class ConstantsData {
  static ConstantsData _instance = new ConstantsData.internal();

  ConstantsData.internal();

  factory ConstantsData() => _instance;

  String? accessToken;
}

class ConstantColors {
  static final primaryColor = Color(0xffFFFFFF);
  static final secondaryColor = Color(0xffFFFFFF);
  static final accentColor = Color(0xffFFFFFF);
  static final cardColor = Color(0xffFFFFFF);
  static final hintColor = Color(0xff808080);
  static final textColor = Color(0xff000000);
//TODO add application main colors
}

class ConstantTheme {
  static final ThemeData appTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    secondaryHeaderColor: ConstantColors.secondaryColor,
    primaryColor: ConstantColors.primaryColor,
    dividerColor: Color(0x1f000000),
    cardColor: ConstantColors.cardColor,
    hintColor: ConstantColors.hintColor,
    accentColor: ConstantColors.accentColor,
    bottomAppBarTheme: BottomAppBarTheme(color: ConstantColors.primaryColor),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      height: 33,
      padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          side: BorderSide(color: ConstantColors.primaryColor)),
      alignedDropdown: false,
      buttonColor: ConstantColors.accentColor,
    ),
    appBarTheme: AppBarTheme(
      color: ConstantColors.secondaryColor,
      iconTheme: IconThemeData(color: ConstantColors.primaryColor),
      elevation: 0.0,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.3,
      ),
      bodyText2: TextStyle(
        fontSize: 18.3,
        letterSpacing: 1.0,
        color: ConstantColors.textColor,
      ),
      headline4: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.7,
      ),
      headline6: TextStyle(
        color: ConstantColors.textColor,
        fontSize: 13.3,
      ),
      headline5: TextStyle(
        color: ConstantColors.textColor,
        fontSize: 20.0,
        letterSpacing: 0.5,
      ),
      caption: TextStyle(
        color: ConstantColors.textColor,
        fontSize: 13.3,
      ),
      overline: TextStyle(color: ConstantColors.textColor, letterSpacing: 0.2),
      headline2: TextStyle(
        color: ConstantColors.textColor,
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
      subtitle2: TextStyle(
        color: ConstantColors.hintColor,
        fontSize: 15.0,
      ),
    ),
  );

  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadiusDirectional.all(Radius.circular(20)));
//TODO update theme data
}
