// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:food_delivary/again.dart';
import 'package:food_delivary/menu.dart';
import 'package:food_delivary/page2.dart';
import 'package:food_delivary/profile.dart';

class Boa extends StatefulWidget {
  const Boa({Key? key}) : super(key: key);

  @override
  State<Boa> createState() => _BoaState();
}

class _BoaState extends State<Boa> {
  int _currentIndex = 0;
  final screens = [
    const Menu(),
    const Page2(),
    const Location(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print('Back Button Pressed!');
        final shouldPop = await showWarning(context);
        return shouldPop ?? false;
      },
      child: Scaffold(
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(226, 226, 226, 1),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_grocery_store_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: ''),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('Do you want to exit app?'),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: (() => Navigator.pop(context, false)),
                child: const Text('No'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: (() => Navigator.pop(context, true)),
                child: const Text('Yes'),
              ),
            ],
          ));
}
