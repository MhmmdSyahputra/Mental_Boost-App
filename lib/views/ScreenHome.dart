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
                        "${greeting},",
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
                        "Novita",
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
                        "Populer",
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
                        title: "Quiz Game",
                        category: "Quiz",
                        color: Colors.red,
                      ),
                      WidgetBox(
                        title: "Stress & Kecemasan",
                        category: "Meditasi",
                        color: Colors.amber,
                      ),
                      WidgetBox(
                        title: "Kesehatan Fisik",
                        category: "Meditasi",
                        color: Colors.green,
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
                        "Dokter Populer",
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
                      fotoProfile:
                          "https://cdn.discordapp.com/attachments/1083786029435191356/1097026345814458418/image.png",
                      namaDokter: "dr Tiara S.Pd",
                      status: true,
                      harga: "40000",
                    ),
                    WidgetDokter(
                      fotoProfile:
                          "https://cdn.discordapp.com/attachments/1083786029435191356/1097039300157251635/image.png",
                      namaDokter: "dr. Putra, S.kom",
                      status: true,
                      harga: "70000",
                    ),
                    WidgetDokter(
                      fotoProfile:
                          "https://cdn.discordapp.com/attachments/1083786029435191356/1097039583683821648/image.png",
                      namaDokter: "dr. Aldi, S.kom",
                      status: false,
                      harga: "35000",
                    ),
                    WidgetDokter(
                      fotoProfile:
                          "https://cdn.discordapp.com/attachments/1083786029435191356/1097056903382700102/image.png",
                      namaDokter: "dr. Filber, SI.kom",
                      status: true,
                      harga: "100000",
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
