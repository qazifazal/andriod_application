import 'package:flutter/material.dart';
import 'package:food_delivary/bottomNav.dart';
import 'package:food_delivary/fullLast.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 119),
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(35, 143, 78, 1),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_active)),
              ],
            ),
            Container(
              height: 120,
              width: 360,
              color: const Color.fromRGBO(217, 217, 217, 0.81),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30, left: 20),
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/svg/12.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 20),
                    child: Column(
                      children: [
                        const Text(
                          'Qazi Fazal.e.Qadir',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Color.fromRGBO(35, 143, 78, 1)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text('+92346 5*****4  ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(106, 98, 98, 1),
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 51,
              width: 360,
              color: const Color.fromRGBO(217, 217, 217, 0.81),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.account_circle_outlined)),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Profile Setting',
                    style: TextStyle(
                        color: Color.fromRGBO(63, 58, 58, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Container(
                height: 51,
                width: 330,
                color: const Color.fromRGBO(217, 217, 217, 0.81),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context) {
                          //     return Lastt();
                          //   }));
                        },
                        icon: const Icon(Icons.newspaper)),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Order',
                      style: TextStyle(
                          color: Color.fromRGBO(63, 58, 58, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Lastt();
                }));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 51,
              width: 360,
              color: const Color.fromRGBO(217, 217, 217, 0.81),
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.headset)),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Customer Support',
                    style: TextStyle(
                        color: Color.fromRGBO(63, 58, 58, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 51,
              width: 360,
              color: const Color.fromRGBO(217, 217, 217, 0.81),
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Delete Account',
                    style: TextStyle(
                        color: Color.fromRGBO(63, 58, 58, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 51,
              width: 360,
              color: const Color.fromRGBO(217, 217, 217, 0.81),
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Log Out',
                    style: TextStyle(
                        color: Color.fromRGBO(63, 58, 58, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
