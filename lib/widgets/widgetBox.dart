import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WidgetBox extends StatefulWidget {
  final String title;
  final String category;
  final Color color;
  const WidgetBox(
      {super.key,
      required this.title,
      required this.category,
      required this.color});

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
          color: widget.color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
              Text(
                widget.category,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ]),
      ),
    );
  }
}
