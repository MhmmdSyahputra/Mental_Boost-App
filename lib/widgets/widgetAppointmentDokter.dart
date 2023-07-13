import 'package:flutter/material.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/utils/MyGlobalFunction.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class WidgetAppointmentDokter extends StatelessWidget {
  final data;
  const WidgetAppointmentDokter({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    final provSchedule = Provider.of<ScheduleProvider>(context);
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Expanded(
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 7,
                color: Color(0xCCD5D5D5),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Date and Time'),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('${data.date}  -  ${data.time}')),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text(
                                    '${data.namePasien}',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '${data.agePasien} Tahun',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          data.status == 0
                              ? Row(
                                  children: [
                                    Container(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          provSchedule.updateStatusSchedule(
                                              data.id, 2);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          primary: Colors.red,
                                        ),
                                        child: Text(
                                          'Cance',
                                          style: TextStyle(
                                              color: ColorConstants
                                                  .textColorLight),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          provSchedule.updateStatusSchedule(
                                              data.id, 1);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          primary: Colors.green,
                                        ),
                                        child: Text(
                                          'Approved',
                                          style: TextStyle(
                                              color: ColorConstants
                                                  .textColorLight),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  children: [
                                    isDateLessThanToday(data.date) &&
                                            data.status != 3 &&
                                            data.status != 2
                                        ? Container(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                provSchedule
                                                    .updateStatusSchedule(
                                                        data.id, 3);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                primary: Colors.green,
                                              ),
                                              child: Text(
                                                'Finished',
                                                style: TextStyle(
                                                    color: ColorConstants
                                                        .textColorLight),
                                              ),
                                            ),
                                          )
                                        : Text(''),
                                    Text(
                                      checkStatusSchedule(data.status),
                                      style: TextStyle(
                                          color: getColorStatusSchedule(
                                              data.status),
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
