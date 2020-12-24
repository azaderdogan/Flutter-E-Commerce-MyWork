import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/models/cart.dart';
import 'package:shop_app_ecommerce/screens/cart/components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: Container(
        height: 174,
        decoration: BoxDecoration(color: Colors.blue, boxShadow: [
          BoxShadow(offset: Offset(0, -15)),
        ]),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
          )),
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
