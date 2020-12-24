import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/screens/otp/components/body.dart';

import '../../size_config.dart';

class OTPScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
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
