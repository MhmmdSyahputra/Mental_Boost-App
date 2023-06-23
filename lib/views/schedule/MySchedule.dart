import 'package:flutter/material.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/widgets/widgetCardSchedule.dart';
import 'package:provider/provider.dart';
import '../../providers/LoginRegisProvider.dart';
import '../../providers/UsersProviders.dart';

class MyScheduleScreen extends StatefulWidget {
  const MyScheduleScreen({super.key});

  @override
  State<MyScheduleScreen> createState() => _MyScheduleScreenState();
}

class _MyScheduleScreenState extends State<MyScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    final provIdUser = Provider.of<UserLoginProvider>(context);
    final user = Provider.of<UsersProvider>(context)
        .getUserById(provIdUser.idUserDoLogin);

    final provMySchedule = Provider.of<ScheduleProvider>(context);

    bool checkMyShedule() {
      final isFound = provMySchedule.scheduleList
          .any((schedule) => schedule.iduser == user.id);
      return isFound;
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.primaryColor,
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
              children: checkMyShedule()
                  ? ScheduleProvider.scheduleList
                      .where((allSchedule) => allSchedule.iduser == user.id)
                      .map((allSchedule) {
                      return WidgetMySchedule(data: allSchedule);
                    }).toList()
                  : [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Text(
                              'Your Schedule is Empty',
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
                                'assets/images/ilustration-empty.png'),
                          )
                        ],
                      )
                    ],
            ),
          );
        }));
  }
}
