// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra/constants/constants.dart';

class Locations extends StatefulWidget {
  static String id = 'locations';
  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Contact Your Near by Sellers:',
            style: GoogleFonts.notoSerifDisplay(
                textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 37)),
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    'images/maps.png',
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 100,
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection('recyclers')
                            .snapshots(),
                        builder:
                            (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasData) {
                            Text('Has data');
                          }
                          if (snapshot.hasError) {
                            return Text('Something went wrong');
                          }

                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Text("Loading");
                          } else {
                            Text('Hey');
                          }

                          return ColumnBuilder(
                            itemCount:
                                (snapshot.data! as QuerySnapshot).docs.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Sources(
                                    dealerName: 'Opticals',
                                    dealerItems: 'Plastic',
                                    dealerTiming: '9am to 10pm',
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 35,
                                  ),
                                  Container(
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 30,
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      Sources(
                        dealerName: 'Opticals',
                        dealerItems: 'Plastic',
                        dealerTiming: '9am to 10pm',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 35,
                      ),
                      Container(
                        height: 1,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      Sources(
                        dealerName: 'Metalica',
                        dealerItems: 'Copper, Steal',
                        dealerTiming: '11am to 10pm',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 35,
                      ),
                      Container(
                        height: 1,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      Sources(
                        dealerName: 'Greeny',
                        dealerItems: 'Paper, Plastic',
                        dealerTiming: '9am to 6pm',
                      ),
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              height: 1,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
