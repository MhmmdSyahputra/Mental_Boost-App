import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/WidgetDokter.dart';
import '../widgets/WidgetTips.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                        'Sebuah Tips Untuk mu',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
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
                    WidgetTips(
                      id: 1,
                      coverTips: 'assets/images/tips/tips-1.png',
                      titleTips: 'Menjaga Kesehatan Mental Selama Pandemi',
                      contentTips: 'lorem ipsum',
                      categoryTips: 'Kesehatan',
                    ),
                    WidgetTips(
                      id: 2,
                      coverTips: 'assets/images/tips/tips-2.png',
                      titleTips: 'Tips Memilih Mainan Anak yang Aman dan Sehat',
                      contentTips: 'lorem ipsum',
                      categoryTips: 'Keluarga',
                    ),
                    WidgetTips(
                      id: 3,
                      coverTips: 'assets/images/tips/tips-3.png',
                      titleTips: 'Tips Mengatasi Masalah Tidur atau Insomnia',
                      contentTips: 'lorem ipsum',
                      categoryTips: 'Kesehatan',
                    ),
                    WidgetTips(
                      id: 4,
                      coverTips: 'assets/images/tips/tips-4.png',
                      titleTips:
                          'Kiat Mengatasi Stres dan Kecemasan Secara Alami',
                      contentTips: 'lorem ipsum',
                      categoryTips: 'Kesehatan',
                    ),
                    WidgetTips(
                      id: 5,
                      coverTips: 'assets/images/tips/tips-5.png',
                      titleTips:
                          'Pentingnya Menjaga Kesehatan Mental Keluarga dalam Keseharian',
                      contentTips: 'lorem ipsum',
                      categoryTips: 'Kesehatan',
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
