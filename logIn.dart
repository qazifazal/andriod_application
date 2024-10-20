import 'package:flutter/material.dart';
import 'package:food_delivary/bottomnav.dart';
import 'package:food_delivary/SignUp.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBiglDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(
        children: <Widget>[
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
          SafeArea(
              child: Center(
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text('Log In',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 30)),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                    children: [
                      Card(
                        color: Colors.white70,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              labelText: 'Enter Email Adress'),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Card(
                        color: Colors.white70,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Enter Password'),
                          obscureText: true,
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
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
                                      builder: (context) => (const Boa())));
                            },
                            child: const Text(
                              'Log In',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Don\'t have an Account'),
                          TextButton(
                            child: const Text('Sign Up',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          (const AuthForm())));
                              //signup screen
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
          )),
        ],
      ),
    );
  }
}
