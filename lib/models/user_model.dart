// ignore_for_file: constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const ID = "uid";
  static const USERNAME = "username";
  static const EMAIL = "email";
  static const PASSWORD = "password";
  static const PHOTO = "photoUrl";

  String? uid;
  String? username;
  String? email;
  String? password;
  String? photoUrl;

  UserModel({
    this.uid,
    this.username,
    this.email,
    this.password,
    this.photoUrl,
  });

  UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    username = doc.data()![USERNAME];
    email = doc.data()![EMAIL];
    uid = doc.data()![ID];
    photoUrl = doc.data()![PHOTO] ?? '';
  }
}
