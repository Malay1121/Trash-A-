import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra/buyer/buyer_recycle_choice.dart';
import 'package:kachra/customer_screens/what_to_recycle.dart';

class Choosing extends StatefulWidget {
  static String id = 'choosing_screen';

  @override
  _ChoosingState createState() => _ChoosingState();
}

class _ChoosingState extends State<Choosing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 15,
            left: MediaQuery.of(context).size.width / 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 50),
              child: Center(
                child: Text(
                  'Which on of these suits you the best:',
                  style: GoogleFonts.notoSerifDisplay(
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 20,
                        color: Colors.white,
                        decorationColor: Colors.transparent),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, RecycleChoice.id);
              },
              child: Text('I am a Customer',
                  style: GoogleFonts.notoSerifDisplay(
                      textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 37))),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.teal,
              textColor: Colors.black,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 10,
                  vertical: MediaQuery.of(context).size.height / 40),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, BuyersRecycle.id);
              },
              child: Text('I am a Buyer',
                  style: GoogleFonts.notoSerifDisplay(
                      textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 37))),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.teal,
              textColor: Colors.black,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 10,
                vertical: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
