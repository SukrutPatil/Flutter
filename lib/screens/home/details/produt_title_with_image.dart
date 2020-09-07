import 'package:flutter/material.dart';
import 'package:project1/constants.dart';
import 'package:project1/models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hand Bag 1",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                ]),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                child: Image.asset(
                  product.image,
                  height: 250,
                  width: 250,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
