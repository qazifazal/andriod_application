import 'package:flutter/material.dart';

class Textff extends StatefulWidget {
  const Textff({Key? key}) : super(key: key);

  @override
  State<Textff> createState() => _TextffState();
}

class _TextffState extends State<Textff> {
  Widget getTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.transparent, width: 0),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: SingleChildScrollView(
        
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          getTextField(hint: 'Select Payment method'),
          const SizedBox(
            height: 10,
          ),
          getTextField(hint: 'Enter account Number'),
          const SizedBox(
            height: 10,
          )
        ]),
      ),
    );
  }
}
