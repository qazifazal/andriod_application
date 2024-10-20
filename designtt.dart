import 'package:flutter/material.dart';
import 'package:food_delivary/again3.dart';
import 'package:food_delivary/textff.dart';

class Designt extends StatelessWidget {
  const Designt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(200, 236, 215, 1),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 17, left: 9),
                        child: Text(
                          'Product details',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Color.fromRGBO(35, 143, 78, 1)),
                        ),
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          'Fresh Natural \nOrange Juice',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(3, 3, 3, 1)),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Wrap(
                        children: const [
                          Text(
                            'Quantity :',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(3, 3, 3, 1)),
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(35, 143, 78, 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 56, top: 55),
                        child: Container(
                          height: 50,
                          width: 124,
                          color: const Color.fromRGBO(35, 143, 78, 0.42),
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            'assets/svg/5.png',
                            width: 7,
                            height: 6,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text(
                          'Total Price: \$5.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromRGBO(3, 3, 3, 1)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Textff(),
        ),
        Center(
          child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (const Again())));
              },
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
