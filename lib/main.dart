import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/routes.dart';
import 'package:shop_app_ecommerce/screens/splash/splash_screen.dart';
import 'package:shop_app_ecommerce/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      
      //home: SplashScreen(),
      // we use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}


