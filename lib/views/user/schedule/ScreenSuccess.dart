import 'package:flutter/material.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/providers/UsersProviders.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/user/mainMenu.dart';
import 'package:mentalboost/views/user/schedule/MySchedule.dart';
import 'package:provider/provider.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provIdUser = Provider.of<UserLoginProvider>(context);
    final user = Provider.of<UsersProvider>(context)
        .getUserById(provIdUser.idUserDoLogin);

    final provMySchedule = Provider.of<ScheduleProvider>(context);

    int totalMyShedule() {
      final isFound = provMySchedule.scheduleList
          .where((schedule) => schedule.iduser == user.id);
      return isFound.length;
    }

    return Scaffold(
      body: ListView(
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
                              color: ColorConstants.primaryColor,
                              fontSize: 30),
                        ),
                      ),
                      Container(
                        child: Text(
                          'You have ${totalMyShedule()} schedule',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.primaryColor,
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
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => BottomNavMain()));
                            },
                            child: Text(
                              "Home",
                              style:
                                  TextStyle(color: ColorConstants.primaryColor),
                            ),
                          )),
                          SizedBox(width: 20),
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyScheduleScreen()));
                                  },
                                  child: Text("Lihat"),
                                  style: ElevatedButton.styleFrom(
                                    primary: ColorConstants.primaryColor,
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
      ),
    );
  }
}
