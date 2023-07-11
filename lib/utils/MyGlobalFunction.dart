import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:mentalboost/widgets/customDialog2.dart';
import '../widgets/customDialog.dart';

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
    return 'Waiting';
  } else if (value == 1) {
    return 'Proses';
  } else if (value == 2) {
    return 'Cancel';
  } else if (value == 3) {
    return 'Done';
  } else {
    return 'Unknow';
  }
}

Color getColorStatusSchedule(int value) {
  if (value == 0) {
    return Colors.yellow;
  } else if (value == 1) {
    return Colors.blue;
  } else if (value == 2) {
    return Colors.red;
  } else if (value == 3) {
    return Colors.green;
  } else {
    return Colors.grey;
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

void showCustomDialog(BuildContext context, String title, String subtile,
    Color color, Icon icon) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CustomDialog(
          title: title, subtile: subtile, color: color, icon: icon);
    },
  );
}

void showCustomDialog2(BuildContext context, String title, String subtile,
    Color color, Icon icon) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CustomDialogPromt(
          title: title, subtile: subtile, color: color, icon: icon);
    },
  );
}

SnackBar createSnackBar(String text, Color color, String label) {
  return SnackBar(
    backgroundColor: color,
    content: Text(
      text,
      style: const TextStyle(color: Colors.black),
    ),
    action: SnackBarAction(
      label: label,
      onPressed: () {
        // Tambahkan aksi yang ingin Anda lakukan saat tombol pada SnackBar ditekan
      },
    ),
  );
}

Widget globalSpinKit() {
  return SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    },
  );
}

dynamic getProfile(image, gender) {
  if (image != null) {
    return image;
  } else {
    if (gender == 'Male') {
      return AssetImage('assets/images/noprofile_male.png');
    }
    return AssetImage('assets/images/noprofile_female.png');
  }
}

bool isDateLessThanToday(String dateStr) {
  final dateFormat = DateFormat('yyyy-MM-dd');
  final today = DateTime.now();
  final date = dateFormat.parse(dateStr);

  // Mengubah tanggal hari ini ke format yang sama
  final todayFormatted = dateFormat.format(today);

  // Membandingkan tanggal dengan tanggal hari ini
  return date.isBefore(DateTime.parse(todayFormatted));
}
