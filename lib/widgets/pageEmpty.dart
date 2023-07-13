import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mentalboost/utils/Mycolor.dart';

class PageEmpty extends StatelessWidget {
  String title;
  String gambar;
  PageEmpty({super.key, required this.title, required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 50),
          child: Text(
            '${title}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ColorConstants.primaryColor,
                fontSize: 18),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Image.asset('${gambar}'),
        )
      ],
    );
  }
}
