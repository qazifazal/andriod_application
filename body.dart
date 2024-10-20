import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCategory {
  final int id;
  final String name;
  getName() {
    return name;
  }

  final Image image;
  getimage() {
    return image;
  }

  MyCategory({required this.name, required this.image, required this.id});
  List<Object> get props => [id, name, image];
  static List<MyCategory> categories = [
    MyCategory(
      image: Image.asset('assets/svg/1.png'),
      id: 1,
      name: 'Fresh Juices',
    ),
    MyCategory(
        image: Image.asset('assets/svg/14.png'), id: 2, name: 'Desi Food'),
    MyCategory(
        image: Image.asset('assets/svg/3.png'), id: 3, name: 'Fast Food'),
    MyCategory(
        image: Image.asset('assets/svg/4.png'), id: 4, name: 'Cold Drinks'),
    MyCategory(image: Image.asset('assets/svg/15.png'), id: 2, name: 'Deserts'),
  ];
}
