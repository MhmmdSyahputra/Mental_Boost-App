import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

String greeting(int hour) {
  if (hour < 12) {
    return 'Good Morning';
  } else if (hour < 18) {
    return 'Good Afternoon';
  } else {
    return 'Good Evening';
  }
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
