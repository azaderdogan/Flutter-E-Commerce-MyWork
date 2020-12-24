import 'package:flutter/material.dart';

import 'constant.dart';

ThemeData theme() {
  return ThemeData(
    
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    textTheme: textTheme(),
    //görsel yoğunluğu belirler
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

//ilk ınpu tasarımında alıp buraya getirkdik /
InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(
      //ıf you are using latest version of flutter then label text and hint text shown like
      //if you are using flutter less then 1.20.* then maybe this is not working properly
      //if we are define our floatinglabelbehovior in our theme then it's not applayed
      //floatingLabelBehavior: FloatingLabelBehavior.always,

      contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder);
}

TextTheme textTheme() {
  return TextTheme(
      bodyText1: TextStyle(
        color: kTextColor,
      ),
      bodyText2: TextStyle(color: kTextColor));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      
      brightness: Brightness.light,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline6: TextStyle(color: Color(0xff8b8b8b), fontSize: 18),
      ));
}
