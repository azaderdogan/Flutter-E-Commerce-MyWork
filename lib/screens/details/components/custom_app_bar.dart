

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_ecommerce/components/rounded_icon_btn.dart';

import '../../../size_config.dart';

class CustomAppBar extends PreferredSize {
  final double rating;

  CustomAppBar({this.rating});
  @override
  // TODO: implement preferredSize
  // Appbar prefered size  height provide us the height taht appy on our app bar
  Size get preferredSize => Size.fromHeight(
        AppBar().preferredSize.height,
      );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left : getProportionateScreenWidth(20),
          right : getProportionateScreenWidth(20),
          top : getProportionateScreenWidth(15),
        
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconButton(
                press: () => Navigator.pop(context),
                iconData: Icons.arrow_back_ios),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset("assets/icons/Star Icon.svg")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
