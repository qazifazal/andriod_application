import 'package:flutter/material.dart';

class Category {
  final int id;
  final String name;
  getName() {
    return name;
  }

  final Image image;
  getimage() {
    return image;
  }

  Category({required this.name, required this.image, required this.id});
  @override
  // ignore: override_on_non_overriding_member
  List<Object> get props => [id, name, image];
  static List<Category> category = [
    Category(image: Image.asset('assets/svg/6.png'), id: 1, name: 'Apples'),
    Category(image: Image.asset('assets/svg/7.png'), id: 2, name: 'PineApples'),
    Category(image: Image.asset('assets/svg/8.png'), id: 3, name: 'Stawbery'),
    Category(image: Image.asset('assets/svg/9.png'), id: 4, name: 'Peach'),
  ];
}
