import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kachra/buyer/buyer_recycle_choice.dart';
import 'package:kachra/buyer/buyers_details.dart';
import 'package:kachra/buyer/thank_you.dart';
import 'package:kachra/customer_screens/confirming_details.dart';
import 'package:kachra/customer_screens/contacting_screen.dart';
import 'package:kachra/customer_screens/customer_quantity.dart';
import 'package:kachra/customer_screens/locations.dart';
import 'package:kachra/screen/choosing.dart';
import 'package:kachra/screen/login_screen.dart';
import 'customer_screens/what_to_recycle.dart';
import 'customer_screens/customer_quantity.dart';
import 'screen/registrarion_screen.dart';
import 'screen/welcome_screen.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: WelcomeScreen.id,
      routes: {
        Contact.id: (context) => Contact(),
        RecycleChoice.id: (context) => RecycleChoice(),
        ThankYou.id: (context) => ThankYou(),
        BuyersDetails.id: (context) => BuyersDetails(),
        BuyersRecycle.id: (context) => BuyersRecycle(),
        CustomerDetails.id: (context) => CustomerDetails(),
        Choosing.id: (context) => Choosing(),
        CustomerQuantity.id: (context) => CustomerQuantity(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        Locations.id: (context) => Locations(),
      },
    );
  }
}
