import 'package:flutter/material.dart';
import 'package:mentalboost/utils/Mycolor.dart';

class WidgetCardDashboard extends StatelessWidget {
  String title;
  Color color;
  int count;

  WidgetCardDashboard(
      {super.key,
      required this.title,
      required this.color,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(),
        width: MediaQuery.of(context).size.width / 2 - 15,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 7,
          color: color,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.4),
                ],
              ),
            ),
            padding: EdgeInsets.all(10),
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    '${title}',
                    style: TextStyle(
                        color: ColorConstants.textColorLight,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Container(
                  child: Text(
                    '${count}',
                    style: TextStyle(
                        color: ColorConstants.textColorLight,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  child: Text(
                    'Total',
                    style: TextStyle(
                        color: ColorConstants.textColorLight,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
