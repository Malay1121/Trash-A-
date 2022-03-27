import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra/screen/registrarion_screen.dart';
import 'package:kachra/constants/roundedButton.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height / 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 8,
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset('images/main_logo.png'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 50,
                ),
                Text(
                  'Welcome To emblems of Earth',
                  style: GoogleFonts.notoSerifDisplay(
                      textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 40,
                          color: Colors.white)),
                )
                // ignore: prefer_const_constructors
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Rounded_Button(
              colour: Colors.lightBlueAccent,
              Onpressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              Title: 'Login',
            ),
            Rounded_Button(
                colour: Colors.blueAccent,
                Onpressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                Title: 'Register'),
          ],
        ),
      ),
    );
  }
}
