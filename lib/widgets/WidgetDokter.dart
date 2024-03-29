import 'package:flutter/material.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/user/schedule/DetailDokter.dart';

class WidgetDokter extends StatefulWidget {
  final data;
  const WidgetDokter({super.key, required this.data});

  @override
  State<WidgetDokter> createState() => _WidgetDokterState();
}

class _WidgetDokterState extends State<WidgetDokter> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailDokterScreen(
                  data: widget.data,
                )));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstants.boxColor,
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
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.data['fotoProfile']),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data['namaDokter'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.data['status'] ? "● Online" : "Offline",
                      style: TextStyle(
                        color:
                            widget.data['status'] ? Colors.green : Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "RP ${widget.data['price']}",
                      style: TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailDokterScreen(
                              data: widget.data,
                            )));
                  },
                  child: Text("Lihat"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      primary: ColorConstants.primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
