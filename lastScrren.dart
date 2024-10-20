import 'package:flutter/material.dart';

class Last extends StatelessWidget {
  const Last({Key? key}) : super(key: key);
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBiglDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(children: <Widget>[
        Positioned(
          left: -getSmallDiameter(context) / 2,
          top: -getSmallDiameter(context) / 2,
          child: Container(
            width: getSmallDiameter(context),
            height: getSmallDiameter(context),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 50, 194, 74),
                  Color.fromARGB(255, 50, 194, 74)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 140),
          child: Center(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: SafeArea(
                    child: Image.asset('assets/svg/11.png'),
                  ),
                ),
                const Text(
                  'Congrats!',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      color: Color.fromRGBO(35, 143, 78, 1)),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 240,
                  child: Wrap(
                    children: const [
                      Text(
                        'YOUR ORDER HAVE DELIVERED ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color.fromRGBO(3, 3, 3, 1)),
                      ),
                      Text(
                        'WITHIN',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color.fromRGBO(3, 3, 3, 1)),
                      ),
                      Text(
                        ' 15 TO 30',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color.fromRGBO(35, 143, 78, 1)),
                      ),
                      Text(
                        ' TO YOU',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color.fromRGBO(3, 3, 3, 1)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  width: 350,
                  height: 200,
                  color: const Color.fromRGBO(225, 225, 225, 1),
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.25))
                  //   ],
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: const [
                            Text(
                              'Product Name:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(35, 143, 78, 1)),
                            ),
                            SizedBox(
                              width: 39,
                            ),
                            Text(
                              'Fresh Natural Orange',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(115, 104, 104, 1)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: const [
                            Text(
                              'Customer Name:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(35, 143, 78, 1)),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              'Qazi Fazal.e.Qadir',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(115, 104, 104, 1)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: const [
                            Text(
                              'Delivery Adress:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(35, 143, 78, 1)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'IMSciences University ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(115, 104, 104, 1)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: const [
                            Text(
                              'Total Price: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Color.fromRGBO(35, 143, 78, 1)),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Text(
                              '\$15',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color.fromRGBO(115, 104, 104, 1)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
