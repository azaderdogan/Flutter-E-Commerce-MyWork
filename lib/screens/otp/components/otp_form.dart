
import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/components/default_button.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  //focus node bizim her bir textfield için focuslama yapmamızı sağlar
  FocusNode pin1FocusNode;
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    pin1FocusNode.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {}
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildOtpField(
                  nextFocus: pin2FocusNode, yourFocusNode: pin1FocusNode),
              buildOtpField(
                  nextFocus: pin3FocusNode, yourFocusNode: pin2FocusNode),
              buildOtpField(
                  nextFocus: pin4FocusNode, yourFocusNode: pin3FocusNode),
              buildOtpField(
                  nextFocus: pin4FocusNode, yourFocusNode: pin4FocusNode),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          DefaultButton(
            text: "Continue",
            press: () {},
          ),
        ],
      ),
    );
  }

  SizedBox buildOtpField({FocusNode nextFocus, FocusNode yourFocusNode}) {
    return SizedBox(
      width: getProportionateScreenWidth(60),
      child: TextFormField(
        focusNode: yourFocusNode,
        autofocus: true,
        obscureText: true,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
        decoration: otpInputDecoration,
        onChanged: (value) {
          if (pin4FocusNode == yourFocusNode) {
            pin4FocusNode.unfocus();
            return "";
          }

          nextField(value: value, focusNode: nextFocus);
        },
      ),
    );
  }
}
