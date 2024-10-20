// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:food_delivary/bottomNavigationBar2.dart';
import 'package:food_delivary/similarproduct.dart';
import 'catagorybox.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Expanded(
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 220)),
                    color: const Color.fromRGBO(178, 228, 198, 1),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/svg/5.png',
                      width: 270,
                      height: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                    width: 140,
                    height: 30,
                    color: const Color.fromRGBO(217, 217, 217, 1),
                    // decoration: const BoxDecoration(
                    //   borderRadius: const BorderRadius.all(
                    //     Radius.circular(10),
                    //   ),
                    // ),
                    child: const Center(
                      child: Text(
                        'Rs 200.00/Glass',
                        style: TextStyle(color: Color.fromRGBO(16, 78, 40, 1)),
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: const [
                        Text(
                          'Fresh Natural \nOrange Juice',
                          style: TextStyle(
                              color: Color.fromRGBO(3, 3, 3, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(35, 143, 78, 1),
                          ),
                          child: IconButton(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            icon: const Icon(Icons.remove),
                            onPressed: () {},
                            iconSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '1',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(35, 143, 78, 1),
                          ),
                          child: IconButton(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            icon: const Icon(Icons.add),
                            onPressed: () {},
                            iconSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(228, 123, 25, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(228, 123, 25, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(228, 123, 25, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(228, 123, 25, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(228, 123, 25, 1),
                  ),
                  Text(
                    '(10)',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 25,
                child: Row(
                  children: const [
                    Text(
                      'Discription',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const <Widget>[
                  Text(
                    ' Lorem Ipsum is simply dummy text of the\n printing and typesetting industry. Lorem \n Ipsum has been the industry\'s standard \n dummy text ever since the 1500s,',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 35,
                child: Row(
                  children: const [
                    Text(
                      'Similar Products',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Category.category.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: CategoryBox(
                      Category.category[index].image,
                      Category.category[index].name,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Bottom2(),
    );
  }
}
