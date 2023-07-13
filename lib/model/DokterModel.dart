import 'package:flutter/material.dart';

class DoktersModel {
  final String id;
  final String fotoProfile;
  final String namaDokter;
  final String spesialis;
  final String manyPasien;
  final Color color;
  final String review;
  final String pengalaman;
  final String biografi;
  final bool status;
  final String price;

  DoktersModel({
    required this.id,
    required this.fotoProfile,
    required this.namaDokter,
    required this.spesialis,
    required this.manyPasien,
    required this.color,
    required this.review,
    required this.pengalaman,
    required this.biografi,
    required this.status,
    required this.price,
  });
}
