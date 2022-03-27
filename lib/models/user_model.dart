import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? uid;
  String? email;
  int? phone;
  String? address;
  String? city;
  String? name;
  String? state;
  int? zip;

  UserModel({
    this.email,
    this.phone,
    this.uid,
    this.address,
    this.city,
    this.name,
    this.state,
    this.zip,
  });

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      phone: map['number'],
      address: map['address'],
      city: map['city'],
      name: map['name'],
      state: map['state'],
      zip: map['395006'],
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
    };
  }
}
