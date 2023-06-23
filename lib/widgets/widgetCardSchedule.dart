import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mentalboost/utils/MyGlobalFunction.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/schedule/DetailOrderschedule.dart';

class WidgetMySchedule extends StatefulWidget {
  final data;

  const WidgetMySchedule({super.key, this.data});

  @override
  State<WidgetMySchedule> createState() => _WidgetMyScheduleState();
}

class _WidgetMyScheduleState extends State<WidgetMySchedule> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String dateNow =
        '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';

    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailOrderScheduleScreen(data: widget.data))),
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: ColorConstants.boxColor,
              border: Border(
                left: BorderSide(
                  color: widget.data.color,
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
                              '${widget.data.spesialisDokter}',
                              style: TextStyle(
                                  color: widget.data.color,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '${widget.data.date}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      )),
                      Container(
                        child: Text(
                          '${widget.data.nameDokter}',
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
                              child: Text('${widget.data.time}'),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  primary: widget.data.color),
                            ),
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: dateNow == widget.data.date &&
                                        widget.data.status != 0
                                    ? Text('Waiting')
                                    : Text(checkStatusSchedule(
                                        widget.data.status))),
                          )
                        ],
                      )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
