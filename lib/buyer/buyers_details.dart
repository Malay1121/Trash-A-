// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kachra/buyer/thank_you.dart';
import 'package:kachra/constants/roundedButton.dart';
import 'package:kachra/models/recycler_model.dart';

import 'buyer_recycle_choice.dart';

class BuyersDetails extends StatefulWidget {
  static String id = 'buyers_details';

  @override
  _BuyersDetailsState createState() => _BuyersDetailsState();
}

var _auth = FirebaseAuth.instance;
TextEditingController _phoneController = TextEditingController();
TextEditingController _emilController = TextEditingController();
TextEditingController _nameController = TextEditingController();
TextEditingController _addressController = TextEditingController();
TextEditingController _cityController = TextEditingController();
TextEditingController _stateController = TextEditingController();
TextEditingController _zipController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _areaController = TextEditingController();

class _BuyersDetailsState extends State<BuyersDetails> {
  late String newTaskTitle;

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
              controller: _nameController,
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
                    controller: _phoneController,
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
                    controller: _areaController,
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
              controller: _addressController,
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
              controller: _cityController,
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
                    controller: _stateController,
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
                    controller: _zipController,
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
              controller: _emilController,
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
          Container(
            height: MediaQuery.of(context).size.height / 11,
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 10,
              right: MediaQuery.of(context).size.width / 40,
            ),
            child: TextField(
              // ignore: prefer_const_constructors
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
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
            height: MediaQuery.of(context).size.height / 80,
          ),
          Rounded_Button(
            colour: Colors.black,
            Onpressed: () {
              signUp(_emilController.text, _passwordController.text);
            },
            Title: 'Confirm My Details',
          )
        ],
      ),
    );
  }

  void signUp(String email, String password) async {
    await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => {
              postDetailsToFirestore(),
            });
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    RecyclerModel recyclerModel = RecyclerModel();

    recyclerModel.email = user!.email;
    recyclerModel.phone = int.parse(_phoneController.text);
    recyclerModel.uid = user.uid;
    recyclerModel.name = _nameController.text;
    recyclerModel.address = _addressController.text;
    recyclerModel.city = _cityController.text;
    recyclerModel.state = _stateController.text;
    recyclerModel.zip = int.parse(_zipController.text);
    recyclerModel.area = int.parse(_areaController.text);
    recyclerModel.bateries = choice7;
    recyclerModel.glass = value;
    recyclerModel.paper = choice1;
    recyclerModel.cardboard = choice2;
    recyclerModel.metal = choice3;
    recyclerModel.plastic = choice4;
    recyclerModel.tires = choice5;
    recyclerModel.textiles = choice6;
    recyclerModel.electronics = choice8;
    recyclerModel.foodwaste = choice9;
    await firebaseFirestore
        .collection("recyclers")
        .doc(user.uid)
        .set(recyclerModel.toMap());

    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => ThankYou()), (route) => false);
  }
}
