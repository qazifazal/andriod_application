import 'package:flutter/material.dart';
import 'package:food_delivary/again.dart';
import 'package:food_delivary/designtt.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                            return const Location();
                          },
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    alignment: Alignment.centerRight,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 109),
                    child: Text(
                      'Payment',
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
                              color: const Color.fromARGB(255, 25, 138, 53),
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
                child: Designt(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
