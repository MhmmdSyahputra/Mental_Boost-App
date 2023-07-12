import 'package:flutter/material.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/providers/UsersProviders.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/widgets/pageEmpty.dart';
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
    final provIdUser = Provider.of<UserLoginProvider>(context);
    final user = Provider.of<UsersProvider>(context)
        .getUserById(provIdUser.idUserDoLogin);

    final provMySchedule = Provider.of<ScheduleProvider>(context);

    bool checkMyShedule(int status) {
      final isFound = provMySchedule.scheduleList.any((schedule) =>
          schedule.iduser == user.id && schedule.status == status);
      return isFound;
    }

    return Scaffold(
        body: DefaultTabController(
      length: 4,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              backgroundColor: ColorConstants.primaryColor,
              floating: true,
              pinned: true,
              snap: true,
              toolbarHeight: 60,
              title: Text('My Schedule'),
              centerTitle: true,
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.hourglass_empty)),
                  Tab(icon: Icon(Icons.cached)),
                  Tab(icon: Icon(Icons.done)),
                  Tab(icon: Icon(Icons.delete)),
                ],
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: TabBarView(
            children: [
              // Halaman pertama
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: checkMyShedule(0)
                        ? provMySchedule.scheduleList
                            .where((allSchedule) =>
                                allSchedule.iduser == user.id &&
                                allSchedule.status == 0)
                            .map((allSchedule) {
                            return Row(
                              children: [
                                Expanded(
                                    child: WidgetMySchedule(data: allSchedule)),
                              ],
                            );
                          }).toList()
                        : [
                            PageEmpty(
                                title: 'Empty waiting queue',
                                gambar: 'assets/images/ilustration-empty.png')
                          ],
                  ),
                ),
              ),

              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: checkMyShedule(1)
                        ? provMySchedule.scheduleList
                            .where((allSchedule) =>
                                allSchedule.iduser == user.id &&
                                allSchedule.status == 1)
                            .map((allSchedule) {
                            return Row(
                              children: [
                                Expanded(
                                    child: WidgetMySchedule(data: allSchedule)),
                              ],
                            );
                          }).toList()
                        : [
                            PageEmpty(
                                title: 'No ongoing schedule',
                                gambar: 'assets/images/ilustration-empty.png')
                          ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: checkMyShedule(3)
                        ? provMySchedule.scheduleList
                            .where((allSchedule) =>
                                allSchedule.iduser == user.id &&
                                allSchedule.status == 3)
                            .map((allSchedule) {
                            return Row(
                              children: [
                                Expanded(
                                    child: WidgetMySchedule(data: allSchedule)),
                              ],
                            );
                          }).toList()
                        : [
                            PageEmpty(
                                title: 'No completed schedule',
                                gambar: 'assets/images/ilustration-empty.png')
                          ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: checkMyShedule(2)
                        ? provMySchedule.scheduleList
                            .where((allSchedule) =>
                                allSchedule.iduser == user.id &&
                                allSchedule.status == 2)
                            .map((allSchedule) {
                            return Row(
                              children: [
                                Expanded(
                                    child: WidgetMySchedule(data: allSchedule)),
                              ],
                            );
                          }).toList()
                        : [
                            PageEmpty(
                                title: 'No deleted schedule',
                                gambar: 'assets/images/ilustration-empty.png')
                          ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
