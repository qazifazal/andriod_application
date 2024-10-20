import 'package:flutter/material.dart';
import 'package:food_delivary/profile.dart';

class Lastt extends StatelessWidget {
  const Lastt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Profile();
                  },
                ),
              );
            },
            icon: const Icon(Icons.arrow_back_ios),
            alignment: Alignment.centerRight,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 90),
            child: Text(
              'Order History',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(35, 143, 78, 1),
              ),
            ),
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_active)),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Delivery',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'On The Way',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Cancelled',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        height: 90,
        width: 360,
        color: const Color.fromRGBO(226, 232, 228, 1),
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 30, top: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/svg/6.png'),
                  ),
                ),
                Text('Fresh Apple',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(63, 58, 58, 1),
                    )),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Price: \$10',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(35, 143, 78, 1)),
                ),
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 80, right: 40),
                  child: Text(
                    'Qn: 2Kg',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(63, 58, 58, 1)),
                  ),
                ),
                Text(
                  'Delivered Date: 10/5/2022',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(139, 134, 134, 1)),
                )
              ],
            )
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        height: 90,
        width: 360,
        color: const Color.fromRGBO(226, 232, 228, 1),
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 30, top: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/svg/8.png'),
                  ),
                ),
                Text('stawbery',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(63, 58, 58, 1),
                    )),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Price: \$30',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(35, 143, 78, 1)),
                ),
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 80, right: 40),
                  child: Text(
                    'Qn: 4Kg',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(63, 58, 58, 1)),
                  ),
                ),
                Text(
                  'Delivered Date: 10/8/2022',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(139, 134, 134, 1)),
                )
              ],
            )
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        height: 90,
        width: 360,
        color: const Color.fromRGBO(226, 232, 228, 1),
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 30, top: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/svg/7.png'),
                  ),
                ),
                Text('Pine Apple',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(63, 58, 58, 1),
                    )),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Price: \$18',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(35, 143, 78, 1)),
                ),
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 80, right: 40),
                  child: Text(
                    'Qn: 2Kg',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(63, 58, 58, 1)),
                  ),
                ),
                Text(
                  'Delivered Date: 10/10/2022',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(139, 134, 134, 1)),
                )
              ],
            )
          ],
        ),
      ),
    ])));
  }
}
