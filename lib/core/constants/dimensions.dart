import 'package:flutter/material.dart';

class AppSizes {
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  // Scalable padding
  static double padding(BuildContext context) =>
      width(context) * 0.05;

  // Scalable font sizes
  static double fontLarge(BuildContext context) =>
      width(context) * 0.07;

  static double fontMedium(BuildContext context) =>
      width(context) * 0.045;

  static double fontSmall(BuildContext context) =>
      width(context) * 0.035;
}