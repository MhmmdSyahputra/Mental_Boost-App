import 'package:flutter/material.dart';
import 'package:mentalboost/model/ScheduleModel.dart';

class ScheduleProvider with ChangeNotifier {
  List<ScheduleModel> _scheduleList = [
    ScheduleModel(
      id: '1',
      profilDokter: 'profil dokter 1',
      nameDokter: 'dokter 1',
      priceDokter: '100000',
      spesialisDokter: 'spesialis 1',
      iduser: '0023923f',
      namePasien: 'pasien 1',
      agePasien: '25',
      appointment: 'Male',
      orderDate: '2023-04-10',
      color: Colors.black,
      time: '10:00',
      date: '2023-05-01',
      status: 0,
    ),
  ];

  List<ScheduleModel> get scheduleList => _scheduleList;

  void AddSchedule(ScheduleModel schedule) {
    _scheduleList.add(schedule);
    notifyListeners();
  }
}
