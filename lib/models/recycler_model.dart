import 'package:firebase_auth/firebase_auth.dart';

class RecyclerModel {
  String? uid;
  String? email;
  String? username;
  int? phone;
  String? address;
  String? city;
  String? name;
  String? state;
  int? zip;
  bool? glass;
  bool? paper;
  bool? cardboard;
  bool? metal;
  bool? plastic;
  bool? tires;
  bool? textiles;
  bool? bateries;
  bool? electronics;
  bool? foodwaste;
  int? area;

  RecyclerModel(
      {this.email,
      this.phone,
      this.uid,
      this.username,
      this.address,
      this.city,
      this.name,
      this.state,
      this.zip,
      this.bateries,
      this.cardboard,
      this.electronics,
      this.foodwaste,
      this.glass,
      this.metal,
      this.paper,
      this.plastic,
      this.textiles,
      this.tires,
      this.area});

  factory RecyclerModel.fromMap(map) {
    return RecyclerModel(
      uid: map['uid'],
      email: map['email'],
      phone: map['number'],
      address: map['address'],
      city: map['city'],
      state: map['state'],
      zip: map['395006'],
      area: map['area'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'city': city,
      'state': state,
      'zip': zip,
      'area': area,
    };
  }
}
