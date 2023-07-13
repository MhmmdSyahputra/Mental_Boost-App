import 'package:flutter/material.dart';
import 'package:mentalboost/model/DokterModel.dart';
import 'package:mentalboost/model/UsersModel.dart';
import 'package:mentalboost/utils/data.dart';

class DoktersProvider with ChangeNotifier {
  List<DoktersModel> _doktersList = [];

  List<DoktersModel> get usersList => _doktersList;

  void addUsers(DoktersModel user) {
    _doktersList.add(user);
    notifyListeners();
  }

  DoktersProvider() {
    _doktersList = Listdokter.map((res) {
      return DoktersModel(
        id: res['id'],
        fotoProfile: res['fotoProfile'],
        namaDokter: res['namaDokter'],
        spesialis: res['spesialis'],
        manyPasien: res['manyPasien'],
        color: res['color'],
        review: res['review'],
        pengalaman: res['pengalaman'],
        biografi: res['biografi'],
        status: res['status'],
        price: res['price'],
      );
    }).toList();
  }

  String _idDokterDoLogin = '';
  String get idDokterDoLogin => _idDokterDoLogin;

  void DokterDoLogin(id) {
    _idDokterDoLogin = id;
    notifyListeners();
  }

  // Metode untuk mengupdate data user berdasarkan ID
  // void updateUser(String id, UsersModel updatedUser) {
  //   final index = _doktersList.indexWhere((user) => user.id == id);
  //   if (index >= 0) {
  //     _doktersList[index] = updatedUser;
  //     notifyListeners();
  //   } else {
  //     throw Exception('User not found');
  //   }
  // }

  // Metode untuk mendapatkan data user berdasarkan ID
  DoktersModel getDokterById(String id) {
    return _doktersList.firstWhere((dokter) => dokter.id == id);
  }
}
