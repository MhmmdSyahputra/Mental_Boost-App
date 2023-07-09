import 'package:flutter/material.dart';
import 'package:mentalboost/providers/DoktersProvider.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/providers/UsersProviders.dart';
import 'package:mentalboost/utils/data.dart';
import 'package:provider/provider.dart';

class PageAppointmentDokter extends StatefulWidget {
  @override
  State<PageAppointmentDokter> createState() => _PageAppointmentDokterState();
}

class _PageAppointmentDokterState extends State<PageAppointmentDokter> {
  @override
  Widget build(BuildContext context) {
    final provMySchedule = Provider.of<ScheduleProvider>(context);
    final provIdDokter = Provider.of<UserLoginProvider>(context);

    final dataDokter = Listdokter.firstWhere(
        (user) => user['id'] == provIdDokter.idUserDoLogin);

    return Column(
      children: [
        // Text(user.id),
        Container(
          child: Column(
            children: provMySchedule.scheduleList.map((res) {
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
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
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
                                    child: Text('${res.date}  -  ${res.time}')),
                                Divider(
                                  color: Colors.black,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Text(
                                              '${res.namePasien}',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              '${res.agePasien} Tahun',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          primary: Colors.white,
                                        ),
                                        child: Text(
                                          'Approved',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
