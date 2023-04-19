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
                        "Sebuah Tips Untuk mu",
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
                      coverTips:
                          'https://images.unsplash.com/photo-1612277795421-9bc7706a4a34?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fGhlYWx0aGNhcmV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                      titleTips: 'Menjaga Kesehatan Mental Selama Pandemi',
                      contentTips: 'lorem ipsum',
                      categoryTips: 'Kesehatan',
                    ),
                    WidgetTips(
                      id: 2,
                      coverTips:
                          'https://o-cdf.sirclocdn.com/unsafe/o-cdn-cas.sirclocdn.com/parenting/images/memilih-mainan-untuk-anak.width-800.format-webp.webp',
                      titleTips: 'Tips Memilih Mainan Anak yang Aman dan Sehat',
                      contentTips: 'lorem ipsum',
                      categoryTips: 'Keluarga',
                    ),
                    WidgetTips(
                      id: 3,
                      coverTips:
                          'https://res.cloudinary.com/dk0z4ums3/image/upload/v1535594438/attached_image/menyiasati-insomnia.jpg',
                      titleTips: 'Tips Mengatasi Masalah Tidur atau Insomnia',
                      contentTips: 'lorem ipsum',
                      categoryTips: 'Kesehatan',
                    ),
                    WidgetTips(
                      id: 4,
                      coverTips:
                          'https://jisindonesia.com/asset/foto_berita/stress.jpg',
                      titleTips:
                          'Kiat Mengatasi Stres dan Kecemasan Secara Alami',
                      contentTips: 'lorem ipsum',
                      categoryTips: 'Kesehatan',
                    ),
                    WidgetTips(
                      id: 5,
                      coverTips:
                          'https://res.cloudinary.com/dk0z4ums3/image/upload/v1599022373/attached_image/cara-menjaga-kesehatan-mental-anak-yang-perlu-dipahami-orang-tua.jpg',
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
