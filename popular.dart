import 'package:flutter/cupertino.dart';

class Popular {
  final Image img;
  final String name;
  final double price;

  const Popular({required this.img, required this.name, required this.price});

  getImage() {
    return img;
  }

  getName() {
    return name;
  }

  getPrice() {
    return price;
  }
}
