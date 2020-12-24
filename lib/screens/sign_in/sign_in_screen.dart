import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/screens/sign_in/components/body.dart';

import '../../size_config.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign in"),
        leading: SizedBox(
          height: getProportionateScreenWidth(40),
          width: getProportionateScreenWidth(40),
          child: FlatButton(
            onPressed: () {},
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
