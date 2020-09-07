import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 50,
      size: 12,
      description: "dummyText",
      image: "assets/images/img1.png",
      color: Color(0xFF083663)),
  Product(
      id: 1,
      title: "Office Code 1",
      price: 50,
      size: 12,
      description: "dummyText",
      image: "assets/images/img2.png",
      color: Color(0xFFCACACA)),
  Product(
      id: 1,
      title: "Office Code 2",
      price: 50,
      size: 12,
      description: "dummyText",
      image: "assets/images/img3.png",
      color: Color(0xFF000000)),
  Product(
      id: 1,
      title: "Office Code 3",
      price: 60,
      size: 12,
      description: "dummyText",
      image: "assets/images/img4.png",
      color: Color(0xFF075009)),
  Product(
      id: 1,
      title: "Office Code 4",
      price: 80,
      size: 12,
      description: "dummyText",
      image: "assets/images/img5.png",
      color: Color(0xFFE4B600)),
  Product(
      id: 1,
      title: "Office Code 5",
      price: 100,
      size: 12,
      description: "dummyText",
      image: "assets/images/img6.png",
      color: Color(0xFF9B0000)),
  Product(
      id: 1,
      title: "Office Code 6",
      price: 50,
      size: 12,
      description: "dummyText",
      image: "assets/images/img1.png",
      color: Color(0xFF083663)),
  Product(
      id: 1,
      title: "Office Code 7",
      price: 40,
      size: 12,
      description: "dummyText",
      image: "assets/images/img1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code 8",
      price: 50,
      size: 12,
      description: "dummyText",
      image: "assets/images/img1.png",
      color: Color(0xFF083663)),
];
