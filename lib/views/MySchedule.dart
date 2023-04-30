import 'package:flutter/material.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/widgets/widgetCardSchedule.dart';
import 'package:provider/provider.dart';

class MyScheduleScreen extends StatefulWidget {
  const MyScheduleScreen({super.key});

  @override
  State<MyScheduleScreen> createState() => _MyScheduleScreenState();
}

class _MyScheduleScreenState extends State<MyScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF4E37A9),
          toolbarHeight: 60,
          title: Text('My Schedule'),
          centerTitle: true,
        ),
        body: Consumer<ScheduleProvider>(builder: (
          context,
          ScheduleProvider,
          child,
        ) {
          return Padding(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: ScheduleProvider.scheduleList.isNotEmpty
                  ? ScheduleProvider.scheduleList.map((allSchedule) {
                      return WidgetMySchedule(
                        profil: allSchedule.profilDokter,
                        name: allSchedule.nameDokter,
                        spesialis: allSchedule.spesialisDokter,
                        color: allSchedule.color,
                        date: allSchedule.date,
                        time: allSchedule.time,
                      );
                    }).toList()
                  : [Text("data masih kosong!")],
            ),
          );
        }));
  }
}
