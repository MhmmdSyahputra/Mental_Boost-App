import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailDokterScreen extends StatefulWidget {
  final String profil;
  final String name;
  final String biografi;
  final String spesialis;
  final String manyPasien;
  final String pengalaman;
  final String review;

  const DetailDokterScreen(
      {super.key,
      required this.profil,
      required this.name,
      required this.biografi,
      required this.spesialis,
      required this.manyPasien,
      required this.pengalaman,
      required this.review});

  @override
  State<DetailDokterScreen> createState() => _DetailDokterScreenState();
}

class _DetailDokterScreenState extends State<DetailDokterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4E37A9),
        toolbarHeight: 60,
        title: Text('Dokter'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 330,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.profil),
                  ),
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(0, 255, 239, 239),
                      Color.fromARGB(250, 250, 250, 250).withOpacity(0.7)
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(0, 255, 239, 239),
                      Color.fromARGB(250, 250, 250, 250).withOpacity(0.7)
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(0, 255, 239, 239),
                      Color.fromARGB(250, 250, 250, 250).withOpacity(0.7)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
