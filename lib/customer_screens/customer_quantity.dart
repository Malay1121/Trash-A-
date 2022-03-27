// ignore_for_file: prefer_const_literals
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra/customer_screens/confirming_details.dart';
import 'package:kachra/customer_screens/locations.dart';

class CustomerQuantity extends StatefulWidget {
  static String id = 'submit';

  @override
  _CustomerQuantityState createState() => _CustomerQuantityState();
}

class _CustomerQuantityState extends State<CustomerQuantity> {
  late String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Quantity of Waste',
                style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 15,
                )),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.7,
              child: TextField(
                onChanged: (String newText) {
                  newTaskTitle = newText;
                },
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 17,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 5.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, CustomerDetails.id);
              },
              child: Text(
                'Submit',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
