import 'package:cowpay/core/helpers/screen_size.dart';
import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  final Color? backgroundColor, borderColor, textColor;
  final String? title;
  final void Function(BuildContext)? onClickFunction;
  final double? width;
  final double height;
  final BuildContext? mainContext;
  final double fontSize;
  final TextStyle? buttonTextStyle;
  final Widget? child;
  final FontWeight? fontWeight;
  const ButtonView(
      {/*Key key,*/
      required this.backgroundColor,
      this.borderColor,
      this.textColor,
      this.title,
      this.onClickFunction,
      this.width,
      this.mainContext,
      this.buttonTextStyle,
      this.fontWeight,
      this.height = 0.06,
      this.fontSize = 12.8,
      this.child})
      : super(/*key: key*/);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClickFunction!(mainContext!),
      child: Container(
          width: width ?? 1.sw,
          height: height.sh,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(color: borderColor ?? backgroundColor!),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: child ??
              Text(title ?? "",
                  style: buttonTextStyle ??
                      TextStyle(
                          fontWeight: fontWeight ?? FontWeight.w500,
                          fontSize: fontSize,
                          color: textColor ?? Colors.white),
                  textScaleFactor: 1)),
    );
  }
}
