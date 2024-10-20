import 'package:flutter/material.dart';
import 'package:food_delivary/gridview.dart';
import 'package:food_delivary/body.dart';
import 'package:food_delivary/home.dart';
import 'package:food_delivary/lastScrren.dart';

import 'catagorybox.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/gog.jpg'),
                ),
                accountName: Text('Qazi \n Fazal.e.Qadir'),
                accountEmail: Text('qazifazal1999@gmail.com'))
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle:
                        const TextStyle(color: Color.fromRGBO(10, 10, 10, 1)),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                      color: Color.fromARGB(255, 19, 1, 1),
                    ),
                    contentPadding: const EdgeInsets.all(8),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 216, 204, 204),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Home(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: MyCategory.categories.length,
                itemBuilder: (context, index) {
                  return CategoryBox(
                    MyCategory.categories[index].image,
                    MyCategory.categories[index].name,
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 60,
                child: Text(
                  'Popular',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Grid(),
          ],
        ),
      ),
      // bottomNavigationBar: const Boa(),
    );
  }
}
