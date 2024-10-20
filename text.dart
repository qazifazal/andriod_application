import 'package:flutter/material.dart';

class Textf extends StatefulWidget {
  const Textf({Key? key}) : super(key: key);

  @override
  State<Textf> createState() => _TextfState();
}

class _TextfState extends State<Textf> {
  Widget getTextField({required String hint}) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 0),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0)),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              filled: true,
              fillColor: const Color.fromRGBO(226, 232, 228, 1),
              hintText: hint,
              hintStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        getTextField(hint: 'Full Name'),
        const SizedBox(
          height: 10,
        ),
        getTextField(hint: 'Phone Number'),
        const SizedBox(
          height: 10,
        ),
        getTextField(hint: 'Enter full Address'),
      ]),
    );
  }
}
