import 'package:flutter/material.dart';
import 'package:mentalboost/views/KonselingChat.dart';

class Widgetkoseling extends StatefulWidget {
  final Color color;
  final String title;
  const Widgetkoseling({super.key, required this.color, required this.title});

  @override
  State<Widgetkoseling> createState() => _WidgetkoselingState();
}

class _WidgetkoselingState extends State<Widgetkoseling> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                ChatKonselingScreen(title: widget.title, color: widget.color)));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
