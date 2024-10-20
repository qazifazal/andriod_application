import 'package:flutter/material.dart';
import 'package:food_delivary/page2.dart';

class CategoryBox extends StatelessWidget {
  final Image image;
  // ignore: non_constant_identifier_names
  final String Name;
  const CategoryBox(
    this.image,
    this.Name, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Page2(),
              ),
            );
          },
          child: Container(
            height: 60,
            width: 70,
            margin: const EdgeInsets.only(right: 15.0, left: 15.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(162, 208, 180, 1),
              borderRadius: BorderRadius.circular(11.0),
            ),
            child: SizedBox(height: 30, width: 20, child: image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              Name,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}
