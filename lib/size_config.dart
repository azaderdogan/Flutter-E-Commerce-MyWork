import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    //ekranın yatay dikey bilgisini döner((yönünü verir))
    orientation = _mediaQueryData.orientation;
  }
}

//ekran boyutuna göre orantılı ekran yüksekliğini elde edin
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  //812, tasarımcının kullandığı düzen yüksekliğidir
  return (inputHeight / 812.0) * screenHeight;
}

//ekran boyutuna göre orantılı ekran gen,işliği elde edin
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  //375, tasarımcının kullandığı ddüzen genişliğidir
  return (inputWidth / 375.0) * screenWidth;
}
