import 'package:flutter/material.dart';

class WidgetTips extends StatefulWidget {
  final id;
  final coverTips;
  final titleTips;
  final contentTips;
  final categoryTips;
  const WidgetTips(
      {super.key,
      this.id,
      this.coverTips,
      this.titleTips,
      this.contentTips,
      this.categoryTips});

  @override
  State<WidgetTips> createState() => _WidgetTipsState();
}

class _WidgetTipsState extends State<WidgetTips> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 243, 243, 243),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.coverTips),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.titleTips,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      widget.categoryTips,
                      style: TextStyle(fontSize: 15, color: Color(0xFF4E37A9)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
