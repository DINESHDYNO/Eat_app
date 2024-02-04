import 'package:flutter/material.dart';
import 'dart:core';

class MiddleWare {
  static final MiddleWare _middleWare = MiddleWare._internal();

  factory MiddleWare() {
    return _middleWare;
  }

  MiddleWare._internal();

  static const String APP_VERSION = '1.0.0';

  static const String APP_NAME = 'Lc Pay';

  // ignore: non_constant_identifier_names
  static int CONNECT_TIMEOUT = 20;
  Color uiPacificBlueColor = const Color(0xff1B8AD6);
  Color uiDarkCeruleanColor = const Color(0xff0C5180);
  Color uiAliceBlueColor = const Color(0xffF4F7FA);

  Color uiLightGreyColor = const Color(0xffe1e1e1);
  Color uiNordicColor = const Color(0xff002F34);
  Color uiRoyalBlueColor = const Color(0xff2A65EA);
  Color uiTangerineYellowColor = const Color(0xffFFCC00);
  Color uiFordGrayColor = const Color(0xff979797);
  Color uiSailColor = const Color(0xffA4D0EF);

  Color themeTransparent = const Color(0xffFADEBB);
  Color uiThemeColor = const Color(0xff0e360c);
  Color uiThemeLightColor = const Color(0xff6b8a68);
  Color uiBetaColor = const Color(0xffffffff);
  Color uiBlueColor = const Color(0xff360756);
  Color uiTextColor = const Color(0xff000000);
  Color uiLightTextColor = const Color(0xff205072);
  Color uiLightTextColor2 = const Color(0xff20649f);
  Color uiRedColor = const Color(0xffFF0000);
  Color uiGreenColor = const Color(0xff10BE74);
  Color uiIconColor = const Color(0xff006838);
  Color uiAlertMessageCardBg = const Color(0x80ffc05e);

  Color uiOrderCardColor = const Color(0xffe9e7e7);
  double margin5 = 5.0;
  double margin10 = 10.0;
  double margin15 = 15.0;
  double margin20 = 20.0;
  double margin25 = 25.0;
  double margin30 = 30.0;
  double margin40 = 40.0;
  double margin50 = 50.0;
  double margin60 = 60.0;
  double margin70 = 70.0;
  double margin80 = 80.0;
  double margin90 = 90.0;
  double margin100 = 100.0;
  double margin150 = 150.0;
  double margin200 = 200.0;
  double margin300 = 300.0;
  double margin400 = 400.0;
  double minimumPadding = 5.0;

  bool isApiLoading = false;

  String strRupeeCurrency = "\u20B9";

  String strDollarCurrency = "\$";

  var placeholder = const AssetImage('assets/images/launcher_icon.png');
  var placeHolderPath = "assets/images/launcher_icon.png";

  bool isFirstToast = false;

  int compressImage = 30;

  String strOfflineMsg = "You are offline. Check your connection!!!";
  String strSorrySomethingWentWrong = "Sorry, something went wrong";
  String strLoadingPleaseWait = "Loading,Please Wait...";
  String aboutInfinityCXE = "InfinityCXE is A Cryptocurrency exchange build for traders, to win together. InfinityCXE offers innovative products and leverages tokens. We strive to develop a platform robust enough for professional training firms and intuitive enough for first-time users.";


  //custom textStyle
  TextStyle customTextStyle(double fontSize, Color textColor,
      FontWeight fontWeight) {
    return TextStyle(
      fontFamily: 'Roboto',
      // Use the font family name specified in pubspec.yaml
      fontSize: fontSize,
      color: textColor,
      fontWeight: fontWeight,
    );
  }

  TextStyle customTextStyleLineThrough(double fontSize, Color textColor,
      FontWeight fontWeight) {
    return TextStyle(
      fontFamily: 'Roboto',
      decoration: TextDecoration.lineThrough,
      fontSize: fontSize,
      color: textColor,
      fontWeight: fontWeight,
    );
  }

  TextStyle customLinkTextStyle(double fontSize, Color textColor,
      FontWeight fontWeight) {
    return TextStyle(
      fontFamily: 'Roboto',
      decoration: TextDecoration.underline,
      fontSize: fontSize,
      color: textColor,
      fontWeight: fontWeight,
    );
  }
  SizedBox putSizedBoxHeight(double value) {
    return SizedBox(
      height: value,
    );
  }

  //divider with color
  Divider putDivider(double value, Color lineColor) {
    return Divider(height: value, color: lineColor);
  }

  //hideKeyBoard function
  void hideKeyBoard(BuildContext context) {
    try {
      FocusScope.of(context).unfocus();
    } catch (e) {
      //print(e);
    }
  }


  //custom divider with width
  SizedBox putSizedBoxWidth(double value) {
    return SizedBox(
      width: value,
    );
  }

//back button press functionality
  void moveToLastScreen(BuildContext context) {
    try {
      Navigator.pop(context, true);
    } catch (e) {
      //print(e);
    }
  }
}