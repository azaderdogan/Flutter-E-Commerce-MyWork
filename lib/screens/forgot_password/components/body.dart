import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/components/default_button.dart';
import 'package:shop_app_ecommerce/components/form_error.dart';
import 'package:shop_app_ecommerce/components/no_account_text.dart';
import 'package:shop_app_ecommerce/screens/sign_in/components/custom_svg_icon.dart';
import 'package:shop_app_ecommerce/size_config.dart';

import '../../../constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please enter your email and we will send \nyou link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              ForgotPassForm()
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue,
          onChanged: (value) {
            if (value.isNotEmpty && errors.contains(kEmailNullError)) {
              setState(() {
                errors.remove(kEmailNullError);
              });
            } else if (emailValidatorRegExp.hasMatch(value) &&
                errors.contains(kInvalidEmailError)) {
              setState(() {
                errors.remove(kInvalidEmailError);
              });
            }
          },
          validator: (value) {
            //hatayı birden fazla eklemesini engelliyoruz
            if (value.isEmpty) {
              if (!errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              }
              return "";
            } else if (!emailValidatorRegExp.hasMatch(value)) {
              if (!errors.contains(kInvalidEmailError) &&
                  !errors.contains(kEmailNullError)) {}
              setState(() {
                errors.add(kInvalidEmailError);
              });

              return "";
            }
            return null;
          },
          //input decoraitonu glopbal yaptık
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Enter your email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              svgIcon: "assets/icons/Mail.svg",
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        FormError(errors: errors),
        SizedBox(
          height: SizeConfig.screenHeight * 0.1,
        ),
        DefaultButton(
          text: "Continue",
          press: () {
            if (_formKey.currentState.validate()) {
              // do what you want to do
              print("valide edildi");
            }
          },
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.1,
        ),
        NoAccountText()
      ]),
    );
  }
}
