import 'package:flutter/material.dart';
import 'package:mentalboost/model/ScheduleModel.dart';

class ScheduleProvider with ChangeNotifier {
  List<ScheduleModel> _scheduleList = [];

  List<ScheduleModel> get scheduleList => _scheduleList;

  void AddSchedule(ScheduleModel schedule) {
    _scheduleList.add(schedule);
    notifyListeners();
  }
}
