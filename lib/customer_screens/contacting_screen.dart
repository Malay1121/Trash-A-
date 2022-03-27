// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatefulWidget {
  static String id = 'contacting';
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Contact Your Near by Sellers:',
            style: GoogleFonts.notoSerifDisplay(),
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'images/maps.png',
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 150.0,
          // ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 40,
                right: MediaQuery.of(context).size.width / 40,
                top: MediaQuery.of(context).size.height / 60),
            height: 1,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            width: MediaQuery.of(context).size.width * 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 25,
                      ),
                      Text('98******89')
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.location_city),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 25,
                        ),
                        Text('This is where there Address is going to be')
                      ],
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.description,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 25,
                      ),
                      Text(
                        'Description',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 25,
                      ),
                      Text('This is where there description is going to be')
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
