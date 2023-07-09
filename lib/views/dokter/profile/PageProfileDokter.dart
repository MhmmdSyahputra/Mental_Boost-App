import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/signin/ScreenLogin.dart';

class PageProfileDokter extends StatefulWidget {
  const PageProfileDokter({super.key});

  @override
  State<PageProfileDokter> createState() => _PageProfileDokterState();
}

class _PageProfileDokterState extends State<PageProfileDokter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (route) => false,
            );
          },
          child: Text(
            'Logout',
            style: TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              primary: ColorConstants.primaryColor),
        )
      ],
    );
  }
}
