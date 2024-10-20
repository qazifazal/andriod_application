import 'package:flutter/material.dart';
import 'package:food_delivary/design.dart';

import 'bottomNav.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Boa();
                          },
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    alignment: Alignment.centerRight,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 120),
                  //   child: TitleText(
                  //     step: currentStep1,
                  //   ),
                  // ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 109),
                    child: Text(
                      'location',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(35, 143, 78, 1),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
                // color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 20),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            // margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 3),
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 25, 138, 53)),
                            padding: const EdgeInsets.all(16),
                            child: const Text(
                              '1',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 85,
                        child: Divider(
                          color: Colors.green,
                          thickness: 5,
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            // margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green, width: 3),
                              color: const Color.fromARGB(255, 211, 218, 212),
                            ),

                            padding: const EdgeInsets.all(16),
                            child: const Text(
                              '2',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 85,
                        child: Divider(
                          color: Colors.green,
                          thickness: 5,
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            // margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 3),
                                shape: BoxShape.circle,
                                color:
                                    const Color.fromARGB(255, 211, 218, 212)),
                            padding: const EdgeInsets.all(16),
                            child: const Text(
                              '3',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 550,
                width: 400,
                child: Design(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
