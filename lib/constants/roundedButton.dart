// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Rounded_Button extends StatelessWidget {
  final Color colour;
  final Onpressed;
  final String Title;

  const Rounded_Button({
    required this.colour,
    required this.Onpressed,
    required this.Title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 15.0,

        shadowColor: Colors.green,

        color: colour,
        // color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(15.0),
        child: MaterialButton(
          onPressed: Onpressed,
          minWidth: MediaQuery.of(context).size.width / 20,
          height: MediaQuery.of(context).size.height / 13.5,
          child: Text(
            Title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
