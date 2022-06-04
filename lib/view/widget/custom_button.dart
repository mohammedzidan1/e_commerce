import 'package:flutter/material.dart';

import '../constant.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double borderRadius;
  final Color backGroundColor;
  final String text;
  final Color textColor;
  final Alignment alignment;
  final Function onpressd;

  CustomButton(
      {this.alignment = Alignment.center,

      @required this.text,
        @required this.onpressd,
      @required this.backGroundColor = primaryColor,
      this.height = 40.0,
      this.borderRadius = 10.0,
      this.textColor=Colors.white});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: height,
        onPressed: onpressd,
        color: backGroundColor,
        child: CustomText(
          text: text,
          color: textColor,
          fontsize: 20.0,
          alignment: alignment,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ));
  }
}
