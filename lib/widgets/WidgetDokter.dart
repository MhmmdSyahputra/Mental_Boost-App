import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WidgetDokter extends StatefulWidget {
  final String fotoProfile;
  final String namaDokter;
  final bool status;
  final String harga;
  const WidgetDokter({
    super.key,
    required this.fotoProfile,
    required this.namaDokter,
    required this.status,
    required this.harga,
  });

  @override
  State<WidgetDokter> createState() => _WidgetDokterState();
}

class _WidgetDokterState extends State<WidgetDokter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: EdgeInsets.all(10),
        color: Color.fromARGB(255, 243, 243, 243),
        child: Row(
          children: [
            Container(
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(widget.fotoProfile),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.namaDokter,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.status ? "● Online" : "Offline",
                    style: TextStyle(
                      color: widget.status ? Colors.green : Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "RP ${widget.harga}",
                    style: TextStyle(
                      color: Color(0xFF4E37A9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Mulai Chat"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Color(0xFF4E37A9)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
