
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    this.isSelected = false,
    @required this.color,
  }) : super(key: key);
  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(50),
      width: getProportionateScreenWidth(50),
      decoration: BoxDecoration(
        //color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? kPrimaryColor:Colors.transparent,
          width: 2,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

