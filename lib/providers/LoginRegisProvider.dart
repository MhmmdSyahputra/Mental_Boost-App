import 'package:flutter/material.dart';
import 'package:mentalboost/model/ScheduleModel.dart';
import 'package:mentalboost/model/LoginModel.dart';

class UserLoginProvider with ChangeNotifier {
  List<UserLoginModel> _userLoginList = [
    UserLoginModel(
        id: '1',
        username: 'Novita',
        email: 'Novita@gmail.com',
        noHp: '082366369129',
        password: 'novita123'),
  ];

  List<UserLoginModel> get userLoginList => _userLoginList;

  String _idUserDoLogin = '';
  String get idUserDoLogin => _idUserDoLogin;

  void userDoLogin(id) {
    _idUserDoLogin = id;
    notifyListeners();
  }

  void register(UserLoginModel user) {
    _userLoginList.add(user);
    notifyListeners();
  }
}
