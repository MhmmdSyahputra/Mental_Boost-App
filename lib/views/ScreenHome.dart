import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mentalboost/widgets/WidgetDokter.dart';

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
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Container(
                child: Row(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        greeting,
                        style: TextStyle(fontWeight: FontWeight.w500),
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
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
                ]),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                child: Row(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        "Populer",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      )
                    ],
                  )),
                ]),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                child: Row(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        "Dokter Populer",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      )
                    ],
                  )),
                ]),
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
                      status: false,
                      harga: "70000",
                    ),
                    WidgetDokter(
                      fotoProfile:
                          "https://cdn.discordapp.com/attachments/1083786029435191356/1097039583683821648/image.png",
                      namaDokter: "dr. Aldi, S.kom",
                      status: true,
                      harga: "35000",
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
