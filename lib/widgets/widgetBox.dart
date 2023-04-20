import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WidgetBox extends StatefulWidget {
  final String title;
  final Icon icon;
  final String category;
  final Color color;
  final bool displayCategory;
  const WidgetBox(
      {super.key,
      required this.title,
      required this.icon,
      required this.category,
      required this.color,
      required this.displayCategory});

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
          color: widget.color.withOpacity(0.6),
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
            widget.icon,
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: widget.displayCategory ? 15 : 17,
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.displayCategory ? widget.category : '',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
