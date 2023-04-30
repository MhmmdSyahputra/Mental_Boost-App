import 'package:flutter/material.dart';

class ScheduleModel {
  final String id;
  final String profilDokter;
  final String nameDokter;
  final String priceDokter;
  final String spesialisDokter;
  final Color color;
  final String namePasien;
  final String agePasien;
  final String appointment;
  final String time;
  final String date;

  ScheduleModel({
    required this.id,
    required this.profilDokter,
    required this.nameDokter,
    required this.priceDokter,
    required this.spesialisDokter,
    required this.color,
    required this.namePasien,
    required this.agePasien,
    required this.appointment,
    required this.time,
    required this.date,
  });
}
