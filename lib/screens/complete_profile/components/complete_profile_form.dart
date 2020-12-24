import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/components/default_button.dart';
import 'package:shop_app_ecommerce/components/form_error.dart';
import 'package:shop_app_ecommerce/screens/otp/otp_screen.dart';
import 'package:shop_app_ecommerce/screens/sign_in/components/custom_svg_icon.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  void removeError({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  void addError({String error}) {
    if (!errors.contains(error)) {
      print("geldi");
      setState(() {
        errors.add(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          FormError(
            errors: errors,
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                //go to OTP screen
                Navigator.pushNamed(context, OTPScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.streetAddress,
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
      },
      validator: (value) {
        //hatayı birden fazla eklemesini engelliyoruz

        if (value.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        //validator null dönerse valide edilmiş olur
        return null;
      },
      //input decoraitonu glopbal yaptık
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
      },
      validator: (value) {
        //hatayı birden fazla eklemesini engelliyoruz

        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        //validator null dönerse valide edilmiş olur
        return null;
      },
      //input decoraitonu glopbal yaptık
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => lastName = newValue,

      //input decoraitonu glopbal yaptık
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
      },
      validator: (value) {
        //hatayı birden fazla eklemesini engelliyoruz

        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        //validator null dönerse valide edilmiş olur
        return null;
      },
      //input decoraitonu glopbal yaptık
      decoration: InputDecoration(
        labelText: "Firts Name",
        hintText: "Enter your first name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }
}
