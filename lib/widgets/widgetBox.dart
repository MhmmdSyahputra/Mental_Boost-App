import 'package:flutter/material.dart';
import 'package:mentalboost/utils/Mycolor.dart';

class WidgetBox extends StatefulWidget {
  final data;
  const WidgetBox({super.key, this.data});

  @override
  State<WidgetBox> createState() => _WidgetBoxState();
}

class _WidgetBoxState extends State<WidgetBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 140,
        height: 130,
        decoration: BoxDecoration(
          color: widget.data['color'].withOpacity(0.6),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            widget.data['icon'],
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: widget.data['displayCategory'] ? 15 : 17,
                    color: ColorConstants.textColorLight,
                  ),
                ),
                Text(
                  widget.data['displayCategory'] ? widget.data['category'] : '',
                  style: TextStyle(
                      fontSize: 15, color: ColorConstants.textColorLight),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
