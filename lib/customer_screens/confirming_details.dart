// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kachra/constants/roundedButton.dart';
import 'package:kachra/customer_screens/locations.dart';

import '../buyer/thank_you.dart';

class CustomerDetails extends StatefulWidget {
  static String id = 'user_details';

  @override
  _CustomerDetailsState createState() => _CustomerDetailsState();
}

class _CustomerDetailsState extends State<CustomerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Please Provide the following details',
          style: TextStyle(fontSize: MediaQuery.of(context).size.height / 40),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 11,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 40,
              left: MediaQuery.of(context).size.width / 40,
              right: MediaQuery.of(context).size.width / 40,
            ),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                ),
                hintText: 'Name',
                hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 45),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 11,
                width: MediaQuery.of(context).size.width / 40,
              ),
              Flexible(
                child: Container(
                  height: MediaQuery.of(context).size.height / 11,
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.call,
                      ),
                      hintText: 'Number',
                      hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 45),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 40,
              ),
              Flexible(
                child: Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 40,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Area',
                      hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 45),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 55,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 11,
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 40,
              right: MediaQuery.of(context).size.width / 40,
            ),
            child: TextField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                icon: Icon(Icons.add_location_alt_outlined),
                hintText: 'Address',
                hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 45),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 55,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 11,
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 10,
              right: MediaQuery.of(context).size.width / 40,
            ),
            child: TextField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                hintText: 'City',
                hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 45),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 55),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 40,
              ),
              Flexible(
                child: Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12.5),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'State',
                      hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 45),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              Flexible(
                child: Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 35),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Zip',
                      hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 45),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 55,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 11,
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 10,
              right: MediaQuery.of(context).size.width / 40,
            ),
            child: TextField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 45),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 55,
          ),
          Rounded_Button(
            colour: Colors.black,
            Onpressed: () {
              Navigator.pushNamed(context, Locations.id);
            },
            Title: 'Confirm My Details',
          )
        ],
      ),
    );
  }
}
