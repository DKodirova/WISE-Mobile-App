import 'package:flutter/material.dart';

Text CustomText(
  String text, {
  required double fontSize,
  required Color color,
  required FontWeight fontWeight,
  TextDecoration? textDecoration,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontSize: fontSize,
      fontWeight: fontWeight,
      decoration: textDecoration,
    ),
  );
}
