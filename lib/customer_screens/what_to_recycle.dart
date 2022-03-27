// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra/customer_screens/customer_quantity.dart';

class RecycleChoice extends StatefulWidget {
  static String id = 'what_to_recycle';

  @override
  _RecycleChoiceState createState() => _RecycleChoiceState();
}

class _RecycleChoiceState extends State<RecycleChoice> {
  bool value = false;
  bool choice1 = false;
  bool choice2 = false;
  bool choice3 = false;
  bool choice4 = false;
  bool choice5 = false;
  bool choice6 = false;
  bool choice7 = false;
  bool choice8 = false;
  bool choice9 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
            child: Text(
          'What Type of waste would you like to recycle',
          maxLines: 2,
        )),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              CheckboxListTile(
                  title: Text(
                    'Glass',
                  ),
                  value: value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text('Paper'),
                  value: choice1,
                  onChanged: (value) {
                    setState(() {
                      choice1 = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text('CardBoard'),
                  value: choice2,
                  onChanged: (value) {
                    setState(() {
                      choice2 = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text('Metal'),
                  value: choice3,
                  onChanged: (value) {
                    setState(() {
                      choice3 = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text('plastic'),
                  value: choice4,
                  onChanged: (value) {
                    setState(() {
                      choice4 = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text('tires'),
                  value: choice5,
                  onChanged: (value) {
                    setState(() {
                      choice5 = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text('textiles'),
                  value: choice6,
                  onChanged: (value) {
                    setState(() {
                      choice6 = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text('bateries'),
                  value: choice7,
                  onChanged: (value) {
                    setState(() {
                      choice7 = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text('electronics'),
                  value: choice8,
                  onChanged: (value) {
                    setState(() {
                      choice8 = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text('food waste'),
                  value: choice9,
                  onChanged: (bool? newValue) {
                    setState(() {
                      choice9 = newValue!;
                    });
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, CustomerQuantity.id);
                  },
                  child: Text(
                    'Next',
                    style: GoogleFonts.patrickHandSc(
                      textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 25),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
