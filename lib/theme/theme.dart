import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

const inputBorderRadius = 10.0;
final lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  //download google font from internet
  fontFamily: GoogleFonts.openSans().fontFamily,
  //app bar customization
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
    centerTitle: true,
    titleTextStyle:
        TextStyle(color: AppColor.lightcontainercolor, fontSize: 16),
    elevation: 0,
  ),
  //color of app
  scaffoldBackgroundColor: AppColor.scafoldColorLight,
  primaryColor: AppColor.royalBlue,
  cardColor: AppColor.lightcontainercolor,
  // text styling for headlines, titles, bodies of text, and more.
  //change font size and color here ..to use Theme.of(context).headline1
  textTheme: const TextTheme(
    bodyText2: TextStyle(fontSize: 14.0),
    //similary we have
    // headline1    96.0  light   -1.5
    // headline2    60.0  light   -0.5
    // headline3    48.0  regular  0.0
    // headline4    34.0  regular  0.25
    // headline5    24.0  regular  0.0
    // headline6    20.0  medium   0.15
    // subtitle1    16.0  regular  0.15
    // subtitle2    14.0  medium   0.1
    // body1        16.0  regular  0.5   (bodyText1)
    // body2        14.0  regular  0.25  (bodyText2)
    // button       14.0  medium   1.25
    // caption      12.0  regular  0.4
    // overline
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    contentPadding: const EdgeInsets.fromLTRB(12, 11, 10, 11),
    hintStyle: TextStyle(fontSize: 12.sp),
    labelStyle: TextStyle(fontSize: 13.sp),

    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ), //error border color in inputfiled
    ),
    errorStyle:
        const TextStyle(color: Colors.red), //error text color in inputfiled
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ), //error border color in inputfiled
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ),
    ),
  ),
);
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  //download google font from internet
  fontFamily: GoogleFonts.openSans().fontFamily,
  //app bar customization
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColor.darkContainerColor,
    centerTitle: true,
    titleTextStyle: TextStyle(color: AppColor.royalBlue, fontSize: 16),
    elevation: 0,
  ),
  //color of app
  scaffoldBackgroundColor: AppColor.scafoldColorDark,
  primaryColor: AppColor.royalBlue,
  cardColor: AppColor.darkContainerColor,

  // text styling for headlines, titles, bodies of text, and more.
  //change font size and color here ..to use Theme.of(context).headline1
  textTheme: const TextTheme(
    bodyText2: TextStyle(fontSize: 14.0),
    //similary we have
    // headline1    96.0  light   -1.5
    // headline2    60.0  light   -0.5
    // headline3    48.0  regular  0.0
    // headline4    34.0  regular  0.25
    // headline5    24.0  regular  0.0
    // headline6    20.0  medium   0.15
    // subtitle1    16.0  regular  0.15
    // subtitle2    14.0  medium   0.1
    // body1        16.0  regular  0.5   (bodyText1)
    // body2        14.0  regular  0.25  (bodyText2)
    // button       14.0  medium   1.25
    // caption      12.0  regular  0.4
    // overline
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    contentPadding: const EdgeInsets.fromLTRB(12, 11, 10, 11),
    hintStyle: TextStyle(fontSize: 12.sp),
    labelStyle: TextStyle(fontSize: 13.sp),

    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ), //error border color in inputfiled
    ),
    errorStyle:
        const TextStyle(color: Colors.red), //error text color in inputfiled
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ), //error border color in inputfiled
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ),
    ),
  ),
);

final luxuryTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  //download google font from internet
  fontFamily: GoogleFonts.openSans().fontFamily,
  //app bar customization
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.green,
    centerTitle: true,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
    elevation: 0,
  ),
  //color of app
  scaffoldBackgroundColor: Colors.orange,
  primaryColor: AppColor.royalBlue,
  cardColor: AppColor.darkContainerColor,

  // text styling for headlines, titles, bodies of text, and more.
  //change font size and color here ..to use Theme.of(context).headline1
  textTheme: const TextTheme(
    bodyText2: TextStyle(fontSize: 14.0),
    //similary we have
    // headline1    96.0  light   -1.5
    // headline2    60.0  light   -0.5
    // headline3    48.0  regular  0.0
    // headline4    34.0  regular  0.25
    // headline5    24.0  regular  0.0
    // headline6    20.0  medium   0.15
    // subtitle1    16.0  regular  0.15
    // subtitle2    14.0  medium   0.1
    // body1        16.0  regular  0.5   (bodyText1)
    // body2        14.0  regular  0.25  (bodyText2)
    // button       14.0  medium   1.25
    // caption      12.0  regular  0.4
    // overline
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    contentPadding: const EdgeInsets.fromLTRB(12, 11, 10, 11),
    hintStyle: TextStyle(fontSize: 12.sp),
    labelStyle: TextStyle(fontSize: 13.sp),

    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ), //error border color in inputfiled
    ),
    errorStyle:
        const TextStyle(color: Colors.red), //error text color in inputfiled
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ), //error border color in inputfiled
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.all(
        Radius.circular(inputBorderRadius),
      ),
    ),
  ),
);
