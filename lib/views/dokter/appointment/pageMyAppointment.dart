import 'package:flutter/material.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/utils/data.dart';
import 'package:mentalboost/widgets/pageEmpty.dart';
import 'package:mentalboost/widgets/widgetAppointmentDokter.dart';
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

    checkSchedule() {
      return provMySchedule.scheduleList
          .where((dokter) => dokter.idDokter == dataDokter['id'])
          .map((res) {
            return WidgetAppointmentDokter(data: res);
          })
          .toList()
          .length;
    }

    return Column(
      children: [
        checkSchedule() != 0
            ? Container(
                child: Column(
                  children: provMySchedule.scheduleList
                      .where((dokter) => dokter.idDokter == dataDokter['id'])
                      .map((res) {
                    return WidgetAppointmentDokter(data: res);
                  }).toList(),
                ),
              )
            : PageEmpty(
                title: 'My Appointments is Empty',
                gambar: 'assets/images/ilustration-empty.png')
      ],
    );
  }
}
