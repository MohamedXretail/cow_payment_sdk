import 'package:cowpay/core/helpers/screen_size.dart';
import 'package:cowpay/cowpay/presentation/ui/generic_views/text_input_error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropDownView extends StatelessWidget {
  final bool isNotValid;
  final Color? mainColor;
  final List<String> list;
  final Function(BuildContext, String?) onChange;
  final String? value;
  final String? icon;
  final String hintText;

  const DropDownView(
      {Key? key,
      this.value,
      required this.hintText,
      required this.isNotValid,
      required this.onChange,
      required this.list,
      this.mainColor,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45.sp,
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              border: Border.all(
                color: isNotValid
                    ? Colors.red
                    : mainColor ?? Color.fromRGBO(24, 128, 64, 1),
                width: 1,
              ),
              color: Colors.white),
          child: Row(
            children: [
              if (icon != null)
                Container(
                  width: 25.sp,
                  height: 25.sp,
                  margin: EdgeInsetsDirectional.only(end: 0.02.sw),
                  child: SvgPicture.asset(
                    "assets/$icon.svg",
                    package: 'cowpay',
                    fit: BoxFit.fill,
                    color: isNotValid
                        ? Colors.red
                        : mainColor ?? Color.fromRGBO(24, 128, 64, 1),
                  ),
                ),
              Expanded(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    itemHeight: 50.0,
                    style: TextStyle(color: Colors.black),
                    hint: Text(
                      hintText,
                      style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                    ),
                    items: List.generate(
                        list.length,
                        (index) => DropdownMenuItem<String>(
                              value: list[index],
                              child: new Text(
                                list[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14.sp),
                              ),
                            )),
                    onChanged: (String? val) {
                      onChange(context, val);
                    },
                    iconEnabledColor: isNotValid
                        ? Colors.red
                        : mainColor ?? Color.fromRGBO(24, 128, 64, 1),
                    value: value != '' ? value : null,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (isNotValid)
          TextInputErrorView(
            errorMessage: 'Required',
          )
      ],
    );
  }
}
