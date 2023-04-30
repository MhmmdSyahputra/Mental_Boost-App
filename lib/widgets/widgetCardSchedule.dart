import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WidgetMySchedule extends StatefulWidget {
  final String profil;
  final String name;
  final String spesialis;
  final Color color;
  final String date;
  final String time;

  const WidgetMySchedule(
      {super.key,
      required this.profil,
      required this.name,
      required this.spesialis,
      required this.color,
      required this.date,
      required this.time});

  @override
  State<WidgetMySchedule> createState() => _WidgetMyScheduleState();
}

class _WidgetMyScheduleState extends State<WidgetMySchedule> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 243, 243, 243),
            border: Border(
              left: BorderSide(
                color: widget.color,
                width: 5,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          height: 120.0,
          width: 100.0,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Container(
                          child: Text(
                            '${widget.spesialis}',
                            style: TextStyle(
                                color: widget.color,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${widget.date}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    )),
                    Container(
                      child: Text(
                        '${widget.name}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        Container(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('${widget.time}'),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                primary: widget.color),
                          ),
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Pending')),
                        )
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
