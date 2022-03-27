// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra/customer_screens/locations.dart';
import 'package:kachra/screen/choosing.dart';

import '../constants/constants.dart';
import '../constants/roundedButton.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

var _auth = FirebaseAuth.instance;

TextEditingController passwordController = TextEditingController();
TextEditingController emailController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
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
                'Login!',
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
                  controller: emailController,
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
                  controller: passwordController,
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
                    logIn(emailController.text, passwordController.text);
                  },
                  Title: 'Login',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void logIn(String email, String password) async {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((uid) => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Locations())));
  }
}
