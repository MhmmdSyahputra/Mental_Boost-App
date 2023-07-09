import 'package:flutter/material.dart';
import 'package:mentalboost/model/ScheduleModel.dart';
import 'package:mentalboost/model/LoginModel.dart';
import 'package:mentalboost/utils/data.dart';

class UserLoginProvider with ChangeNotifier {
  List<UserLoginModel> _userLoginList = [];

  List<UserLoginModel> get userLoginList => _userLoginList;

  UserLoginProvider() {
    _userLoginList = listAkunDokter.map((res) {
      return UserLoginModel(
        id: res['id'],
        username: res['username'],
        email: res['email'],
        noHp: res['noHp'],
        password: res['password'],
        tipe: res['tipe'],
      );
    }).toList();
  }

  String _idUserDoLogin = '';
  String get idUserDoLogin => _idUserDoLogin;

  void userDoLogin(id) {
    _idUserDoLogin = '';
    _idUserDoLogin = id;
    notifyListeners();
  }

  void register(UserLoginModel user) {
    _userLoginList.add(user);
    notifyListeners();
  }
}
