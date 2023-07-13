import 'package:flutter/material.dart';

class ScheduleModel {
  final String id;
  final String idDokter;
  final Color color;
  final String namePasien;
  final String iduser;
  final String agePasien;
  final String appointment;
  final String orderDate;
  final String time;
  final String date;
  late int status;

  ScheduleModel({
    required this.id,
    required this.idDokter,
    required this.color,
    required this.iduser,
    required this.namePasien,
    required this.agePasien,
    required this.appointment,
    required this.orderDate,
    required this.time,
    required this.date,
    required this.status,
  });
}
