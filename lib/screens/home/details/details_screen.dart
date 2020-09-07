import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/constants.dart';
import 'package:project1/models/Product.dart';
import 'package:project1/screens/home/details/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back1.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/back.svg",
              color: Colors.white,
              height: 30,
              width: 30,
            ),
            padding: EdgeInsets.all(15),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: Colors.white,
              height: 30,
              width: 30,
            ),
            padding: EdgeInsets.all(15),
            onPressed: () {}),
        SizedBox(
          width: kDefaultPadding,
        )
      ],
    );
  }
}
