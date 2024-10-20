import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6,
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Container(
              width: 30,
              decoration: BoxDecoration(
                  // color: Color.fromARGB(178, 228, 198, 1),
                  color: const Color.fromRGBO(178, 228, 198, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Image.asset(
                          'assets/img1.png',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text(
                            'Up to 20% off',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(18, 113, 55, 1)),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Enjoy our big offer of\nevery day',
                                style: TextStyle(
                                    color: Color.fromRGBO(63, 58, 58, 1))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(18, 133, 55, 1)),
                              child: const Text(
                                'order Now',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 254, 254, 1),
                                ),
                              ),
                            ),
                          )
                        ]),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
