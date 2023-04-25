import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mentalboost/widgets/WidgetDokter.dart';
import 'package:mentalboost/widgets/widgetBox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hour = DateTime.now().hour;

    // Determine greeting based on current hour
    String greeting;
    if (hour < 12) {
      greeting = 'Good Morning';
    } else if (hour < 18) {
      greeting = 'Good Afternoon';
    } else {
      greeting = 'Good Evening';
    }

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              Container(
                child: Row(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        '${greeting},',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      )
                    ],
                  )),
                ]),
              ),
              Container(
                child: Row(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        'Novita',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      )
                    ],
                  )),
                ]),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        'Populer',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      WidgetBox(
                        icon: Icon(
                          Icons.gamepad_outlined,
                          size: 40,
                          color: Color(0xFFA800A6),
                        ),
                        title: 'Quiz Game',
                        category: 'Quiz',
                        color: Color(0xCCD800A6),
                        displayCategory: true,
                      ),
                      WidgetBox(
                        icon: Icon(
                          Icons.sentiment_very_dissatisfied,
                          size: 40,
                          color: Color(0xFFFF6969),
                        ),
                        title: 'Stress & Kecemasan',
                        category: 'Meditasi',
                        color: Color(0xCCFF9969),
                        displayCategory: true,
                      ),
                      WidgetBox(
                        icon: Icon(
                          Icons.healing,
                          size: 40,
                          color: Color(0xFF576CBC),
                        ),
                        title: 'Kesehatan Fisik',
                        category: 'Meditasi',
                        color: Color(0xCC576CBC),
                        displayCategory: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        'Dokter Populer',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    WidgetDokter(
                      fotoProfile: 'assets/images/dokter/dokter-1.png',
                      namaDokter: 'Dr Tiara S.Pd',
                      spesialis: 'Psikiater',
                      manyPasien: '5230',
                      review: '6420',
                      pengalaman: '6',
                      biografi:
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores unde quasi deserunt quod ad cumque mollitia eaque vel adipisci incidunt minus perferendis sed odio, molestiae nam! Obcaecati ab ex vitae.',
                      status: randomBool(),
                      price: '40000',
                    ),
                    WidgetDokter(
                      fotoProfile: 'assets/images/dokter/dokter-2.png',
                      namaDokter: 'Dr. Putra, S.kom',
                      spesialis: 'Psikolog',
                      manyPasien: '6809',
                      review: '10353',
                      pengalaman: '10+',
                      biografi:
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores unde quasi deserunt quod ad cumque mollitia eaque vel adipisci incidunt minus perferendis sed odio, molestiae nam! Obcaecati ab ex vitae.',
                      status: randomBool(),
                      price: '100000',
                    ),
                    WidgetDokter(
                      fotoProfile: 'assets/images/dokter/dokter-3.png',
                      namaDokter: 'Dr. Aldi, S.kom',
                      spesialis: 'Terapis',
                      manyPasien: '5342',
                      review: '7065',
                      pengalaman: '4+',
                      biografi:
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores unde quasi deserunt quod ad cumque mollitia eaque vel adipisci incidunt minus perferendis sed odio, molestiae nam! Obcaecati ab ex vitae.',
                      status: randomBool(),
                      price: '65000',
                    ),
                    WidgetDokter(
                      fotoProfile: 'assets/images/dokter/dokter-4.png',
                      namaDokter: 'Dr. Filber, SI.kom',
                      spesialis: 'Konselor',
                      manyPasien: '7593',
                      review: '5095',
                      pengalaman: '7',
                      biografi:
                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores unde quasi deserunt quod ad cumque mollitia eaque vel adipisci incidunt minus perferendis sed odio, molestiae nam! Obcaecati ab ex vitae.',
                      status: randomBool(),
                      price: '80000',
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

bool randomBool() {
  final random = Random();
  return random.nextInt(2) == 0;
}
