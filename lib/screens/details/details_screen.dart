import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_ecommerce/components/rounded_icon_btn.dart';
import 'package:shop_app_ecommerce/models/product.dart';
import 'package:shop_app_ecommerce/screens/details/components/body.dart';
import 'package:shop_app_ecommerce/size_config.dart';

import 'components/custom_app_bar.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      //by default our background color is white
      backgroundColor: Color(0xfff5f6f9),
      appBar: CustomAppBar(
        rating: arguments.product.rating,
      ),
      body: Body(product: arguments.product),
    );
  }
}
// but we also need to pass our product to our detailsscreens
// and we user name route so we need to create a arguments class
//popular productsta kullandık

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({@required this.product});
}
