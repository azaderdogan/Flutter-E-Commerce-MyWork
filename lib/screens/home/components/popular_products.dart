import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/models/product.dart';
import 'package:shop_app_ecommerce/screens/details/details_screen.dart';
import 'package:shop_app_ecommerce/screens/home/components/product_card.dart';
import 'package:shop_app_ecommerce/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular products", press: () {}),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                    product: demoProducts[index],
                    press: () {
                      Navigator.pushNamed(context, DetailScreen.routeName,
                          arguments: ProductDetailsArguments(
                            //karşı ekrana gidecek argümanları burada belirledi
                            product: demoProducts[index],
                          ));
                    }),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
