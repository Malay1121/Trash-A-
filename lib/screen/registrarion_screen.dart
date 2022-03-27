import 'package:google_fonts/google_fonts.dart';
import 'package:kachra/screen/choosing.dart';

import '../constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../constants/roundedButton.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late String username;
  bool showSpinner = false;

  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 10,
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset('images/main_logo.png',
                        height: MediaQuery.of(context).size.height),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 50,
              ),
              Text(
                'Register!',
                style: GoogleFonts.notoSerifDisplay(
                  textStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 25,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // ignore: duplicate_ignore
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                // ignore: prefer_const_constructors
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kdecorationInputText.copyWith(
                      hintText: 'Enter Your Username'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kdecorationInputText.copyWith(
                      hintText: 'Enter Your Email'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration:
                      kdecorationInputText.copyWith(hintText: 'Password'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Rounded_Button(
                  colour: Colors.lightBlueAccent,
                  Onpressed: () {
                    Navigator.pushNamed(context, Choosing.id);
                  },
                  Title: 'Register',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
