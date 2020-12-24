import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/components/default_button.dart';
import 'package:shop_app_ecommerce/models/product.dart';
import 'package:shop_app_ecommerce/screens/details/components/product_description.dart';
import 'package:shop_app_ecommerce/screens/details/components/product_images.dart';
import 'package:shop_app_ecommerce/screens/details/components/top_rounded_description.dart';
import 'package:shop_app_ecommerce/size_config.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;

  Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xfff6f7f9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,
                              top: getProportionateScreenWidth(15),
                              bottom: getProportionateScreenWidth(22)),
                          child: DefaultButton(
                            text: "Add to cart",
                            press: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
