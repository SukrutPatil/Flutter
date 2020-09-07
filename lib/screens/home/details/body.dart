import 'package:flutter/material.dart';
import 'package:project1/constants.dart';
import 'package:project1/screens/home/details/produt_title_with_image.dart';
import 'package:project1/models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: kDefaultPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Color"),
                          Container(
                            margin: EdgeInsets.only(
                              top: kDefaultPadding / 4,
                              right: kDefaultPadding / 2,
                            ),
                            padding: EdgeInsets.all(2.5),
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFF36C95),
                              ),
                            ),
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                              color: Color(0xFF356C95),
                              shape: BoxShape.circle,
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPadding / 4,
        right: kDefaultPadding / 2,
      ),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          border: Border.all(
        color: isSelected ? color : Colors.transparent,
      )),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
