import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/components/rounded_icon_btn.dart';
import 'package:shop_app_ecommerce/models/product.dart';

import '../../../size_config.dart';
import 'body.dart';
import 'color_dot.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    //for demo we use fixed value
    int selectedColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconButton(
            press: () {},
            iconData: Icons.remove,
          ),
          SizedBox(width: getProportionateScreenWidth(15)),
          RoundedIconButton(
            press: () {},
            iconData: Icons.add,
          )
        ],
      ),
    );
  }
}
