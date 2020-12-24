import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/screens/sign_up/components/body.dart';

import '../../size_config.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
         leading: SizedBox(
          height: getProportionateScreenWidth(40),
          width: getProportionateScreenWidth(40),
          child: FlatButton(
            onPressed: () {},
            child: Icon(Icons.arrow_back_ios),
          ),
      ),),
      body: Body(),
    );
  }
}
