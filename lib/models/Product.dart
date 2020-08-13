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
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 50,
      size: 12,
      description: "dummyText",
      image: "assets/images/img1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 50,
      size: 12,
      description: "dummyText",
      image: "assets/images/img1.png",
      color: Color(0xFF3D82AE)),
];
