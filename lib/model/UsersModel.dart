import 'package:flutter/material.dart';

class UsersModel {
  final String id;
  final String username;
  final String email;
  final String noHp;
  final String gender;
  final String dateOfBirth;

  UsersModel(
      {required this.id,
      required this.username,
      required this.email,
      required this.noHp,
      required this.gender,
      required this.dateOfBirth});
}
