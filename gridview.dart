import 'package:flutter/material.dart';
import 'package:food_delivary/popular.dart';

class Grid extends StatelessWidget {
  Grid({Key? key}) : super(key: key);
  List<Popular> items = [
    Popular(img: Image.asset('assets/svg/5.png'), name: 'Orange', price: 5.00),
    Popular(img: Image.asset('assets/svg/6.png'), name: 'Apple', price: 6.00),
    Popular(
        img: Image.asset('assets/svg/7.png'), name: 'Strawberry', price: 7.00),
    Popular(
        img: Image.asset('assets/svg/8.png'), name: 'Pineapple', price: 8.00)
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 500,
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 125, child: items[index].img),
                  Container(
                    color: const Color.fromRGBO(162, 208, 180, 1),
                    height: 60,
                    child: Column(
                      children: [
                        Text(
                          items[index].name,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(63, 58, 58, 1)),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "\$${items[index].price}/Kg",
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(16, 78, 40, 1)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Container(
                                  height: 20,
                                  width: 20,
                                  color: const Color.fromARGB(255, 2, 2, 2),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 7, right: 3),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
