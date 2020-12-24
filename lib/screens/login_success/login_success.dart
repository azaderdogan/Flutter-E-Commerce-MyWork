import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/screens/login_success/components/body.dart';

import '../../size_config.dart';

class LoginSucces extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: getProportionateScreenWidth(40),
          width: getProportionateScreenWidth(40),
          child: FlatButton(
            onPressed: () {},
            child: Icon(Icons.arrow_back_ios),
          ),
      ),
        title: Text("Login succes",style: TextStyle(

        ),),
      ),
      body: Body(),
    );
  }
}
