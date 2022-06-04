import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontsize;
  final double height;
  final Alignment alignment;

  final int maxline;

  CustomText(

      {this.maxline,
        this.height,
      this.text,
      this.color,
      this.fontsize,
      this.alignment = Alignment.topLeft});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        maxLines: maxline,

        style: TextStyle(color: color, fontSize: fontsize,height: height),
      ),
    );
  }
}
