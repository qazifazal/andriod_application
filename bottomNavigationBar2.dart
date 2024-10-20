// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Bottom2 extends StatefulWidget {
  const Bottom2({Key? key}) : super(key: key);

  @override
  State<Bottom2> createState() => _Bottom2State();
}

class _Bottom2State extends State<Bottom2> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromRGBO(226, 226, 226, 1),
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 8),
                  child: Text(
                    'Total',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9, top: 3),
                  child: Text(
                    '\Rs 200.00',
                    style: TextStyle(color: Color.fromRGBO(14, 136, 62, 1)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 250),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(35, 143, 78, 1)),
                    child: const Text(
                      'Add Cart',
                      style: TextStyle(color: Color.fromRGBO(255, 254, 254, 1)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
