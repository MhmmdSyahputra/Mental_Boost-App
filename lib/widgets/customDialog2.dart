import 'package:flutter/material.dart';

class CustomDialogPromt extends StatelessWidget {
  final String title;
  final String subtile;
  final Color color;
  final Icon icon;

  const CustomDialogPromt({
    Key? key,
    required this.title,
    required this.subtile,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: SingleChildScrollView(
        child: Container(
          width: 250,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 50, 5, 5),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  subtile,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 35,
                    ),
                  ),
                  child: Text('OK'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
