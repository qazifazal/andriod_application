import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    // theme:  ThemeData(primarySwatch: Colors.lightGreen),
    home: foodDeliery(),
  ));
}

// ignore: camel_case_types, must_be_immutable
class foodDeliery extends StatelessWidget {
  foodDeliery({Key? key}) : super(key: key);

  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 57, 141, 82),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 21, 122, 72),
                Color.fromARGB(255, 199, 219, 200),
              ],
            ),
          ),
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/koko.png',
                  // fit: BoxFit.fill,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.elliptical(
                            MediaQuery.of(context).size.width, 120.0),
                      ),
                    ),
                    child: SafeArea(
                      child: Column(
                        children: [
                          Title(
                            color: Colors.black,
                            child: const Text(
                              'Welcome To\n Habib Resturant',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: [
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Order Food Online and get it\n delivery anywhere anytime',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 150,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: Container(
                                height: 50,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                (const AuthForm())));
                                  },
                                  child: const Text(
                                    'Get Started',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
