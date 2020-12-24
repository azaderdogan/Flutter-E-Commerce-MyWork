
import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key key,
    @required this.press,
    @required this.iconData,
  }) : super(key: key);
  final IconData iconData;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: press,
        color: Colors.white,
        child: Icon(iconData),
        
      ),
    );
  }
}

