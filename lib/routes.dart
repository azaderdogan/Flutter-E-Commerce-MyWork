
import 'package:flutter/widgets.dart';
import 'package:shop_app_ecommerce/screens/cart/cart_screen.dart';
import 'package:shop_app_ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app_ecommerce/screens/details/details_screen.dart';
import 'package:shop_app_ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app_ecommerce/screens/home/home_screen.dart';
import 'package:shop_app_ecommerce/screens/login_success/login_success.dart';
import 'package:shop_app_ecommerce/screens/otp/otp_screen.dart';
import 'package:shop_app_ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app_ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:shop_app_ecommerce/screens/splash/splash_screen.dart';

// we use name route
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSucces.routeName: (context) => LoginSucces(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName:(context) => DetailScreen(),
  CartScreen.routeName: (context) => CartScreen()
  };
