import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_ecommerce/constant.dart';
import 'package:shop_app_ecommerce/models/product.dart';
import 'package:shop_app_ecommerce/screens/home/components/popular_products.dart';
import 'package:shop_app_ecommerce/screens/home/components/product_card.dart';
import 'package:shop_app_ecommerce/screens/home/components/section_title.dart';
import 'package:shop_app_ecommerce/screens/home/components/special_offers.dart';
import 'package:shop_app_ecommerce/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts()
          ],
        ),
      ),
    );
  }
}
