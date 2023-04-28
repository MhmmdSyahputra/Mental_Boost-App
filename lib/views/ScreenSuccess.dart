import 'package:flutter/material.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/views/MySchedule.dart';
import 'package:mentalboost/views/mainMenu.dart';
import 'package:provider/provider.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ScheduleProvider>(builder: (
        context,
        ScheduleProvider,
        child,
      ) {
        return ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Center(
                child: Column(children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'GREETINGS!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4E37A9),
                                fontSize: 30),
                          ),
                        ),
                        Container(
                          child: Text(
                            'You have ${ScheduleProvider.scheduleList.length} schedule',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4E37A9),
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            child: Image.asset(
                                'assets/images/ilustration-success.png')),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(children: [
                            Expanded(
                                child: OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => BottomNavMain()));
                              },
                              child: Text(
                                "Home",
                                style: TextStyle(color: Color(0xFF4E37A9)),
                              ),
                            )),
                            SizedBox(width: 20),
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyScheduleScreen()));
                                    },
                                    child: Text("Lihat"),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF4E37A9),
                                    ))),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        );
      }),
    );
  }
}
