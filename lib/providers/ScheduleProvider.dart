import 'package:flutter/material.dart';
import 'package:mentalboost/model/ScheduleModel.dart';

class ScheduleProvider with ChangeNotifier {
  List<ScheduleModel> _scheduleList = [];

  List<ScheduleModel> get scheduleList => _scheduleList;

  void AddSchedule(ScheduleModel schedule) {
    _scheduleList.add(schedule);
    notifyListeners();
  }

  void updateStatusSchedule(String id, int status) {
    final index = _scheduleList.indexWhere((data) => data.id == id);
    if (index >= 0) {
      _scheduleList[index].status = status;
      notifyListeners();
    } else {
      throw Exception('data not found');
    }
  }
}
