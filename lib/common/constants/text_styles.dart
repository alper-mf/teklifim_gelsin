import 'package:flutter/material.dart';

class ITextStyle {
  static TextStyle h1(Color textColor, bool isBold) {
    return TextStyle(
      color: textColor,
      fontSize: 36,
      fontFamily: isBold ? 'QuickSand-Bold' : 'QuickSand-Regular',
    );
  }

  static TextStyle h2(Color textColor, bool isBold) {
    return TextStyle(
      color: textColor,
      fontSize: 24,
      fontFamily: isBold ? 'QuickSand-Bold' : 'QuickSand-Regular',
    );
  }

  static TextStyle subHead(Color textColor, bool isBold) {
    return TextStyle(
      color: textColor,
      fontSize: 18,
      fontFamily: isBold ? 'QuickSand-Bold' : 'QuickSand-Regular',
    );
  }

  static TextStyle subTitle(Color textColor, bool isBold) {
    return TextStyle(
        color: textColor,
        fontSize: 14,
        fontFamily: isBold ? 'QuickSand-Bold' : 'QuickSand-Regular');
  }

  static TextStyle caption(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
    );
  }

  static TextStyle searchTextStyle(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
    );
  }

  static TextStyle reviewTitle(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle reviewSubTitle(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
    );
  }

  static TextStyle buttonTextStyle(
      {required bool isColoredButton, required Color buttonTextColor}) {
    if (isColoredButton) {
      return const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );
    } else {
      return TextStyle(
        color: buttonTextColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );
    }
  }
}
