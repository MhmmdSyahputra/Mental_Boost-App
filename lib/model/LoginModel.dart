import 'package:flutter/material.dart';

class UserLoginModel {
  final String id;
  final String username;
  final String email;
  final String noHp;
  final String password;
  final String tipe;

  UserLoginModel(
      {required this.id,
      required this.username,
      required this.email,
      required this.noHp,
      required this.password,
      required this.tipe});
}
