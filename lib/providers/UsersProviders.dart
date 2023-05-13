import 'package:flutter/material.dart';
import 'package:mentalboost/model/UsersModel.dart';

class UsersProvider with ChangeNotifier {
  List<UsersModel> _usersList = [];

  List<UsersModel> get usersList => _usersList;

  void addUsers(UsersModel user) {
    _usersList.add(user);
    notifyListeners();
  }
}
