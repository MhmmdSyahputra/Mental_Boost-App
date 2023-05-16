import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

String greeting(int hour) {
  if (hour < 12) {
    return 'Good Morning';
  } else if (hour < 18) {
    return 'Good Afternoon';
  } else {
    return 'Good Evening';
  }
}

int getOld(String dateBirth) {
  DateTime today = DateTime.now();
  DateTime dob = DateFormat("yyyy-MM-dd").parse(dateBirth);
  int umur = today.year - dob.year;
  if (today.month < dob.month ||
      (today.month == dob.month && today.day < dob.day)) {
    umur--;
  }
  return umur;
}

bool randomBool() {
  final random = Random();
  return random.nextInt(2) == 0;
}

String checkStatusSchedule(int value) {
  if (value == 0) {
    return 'Cancel';
  } else if (value == 1) {
    return 'Done';
  } else if (value == 2) {
    return 'Pending';
  } else {
    return 'Unknown status';
  }
}

void myNotif(String msg, Color color) {
  Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: color,
      textColor: Colors.black,
      fontSize: 16.0);
}
