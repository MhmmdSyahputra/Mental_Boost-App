import 'package:flutter/material.dart';
import '../widgets/widgetBox.dart';

class MeditasiScreen extends StatelessWidget {
  const MeditasiScreen({super.key});

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
                        "Topik Meditasi Untuk mu!",
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
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    WidgetBox(
                      icon: Icon(
                        Icons.nights_stay,
                        size: 50,
                        color: Color(0xFF82C3EC),
                      ),
                      title: "Meditasi Tidur",
                      category: "Quiz",
                      color: Color(0xCC92C3EC),
                      displayCategory: false,
                    ),
                    WidgetBox(
                      icon: Icon(
                        Icons.weekend,
                        size: 50,
                        color: Color(0xFF967E76),
                      ),
                      title: "Tenang Dirumah",
                      category: "Meditasi",
                      color: Color(0xCC967E76),
                      displayCategory: false,
                    ),
                    WidgetBox(
                      icon: Icon(
                        Icons.sentiment_very_dissatisfied,
                        size: 50,
                        color: Color(0xFFFF6969),
                      ),
                      title: "Stress & Kecemasan",
                      category: "Meditasi",
                      color: Color(0xCCFF9969),
                      displayCategory: false,
                    ),
                    WidgetBox(
                      icon: Icon(
                        Icons.healing,
                        size: 50,
                        color: Color(0xFF576CBC),
                      ),
                      title: "Kesehatan Fisik",
                      category: "Meditasi",
                      color: Color(0xCC576CBC),
                      displayCategory: false,
                    ),
                    WidgetBox(
                      icon: Icon(
                        Icons.nature_people,
                        size: 50,
                        color: Color(0xFF38E54D),
                      ),
                      title: "Meditasi Pernapasan",
                      category: "Meditasi",
                      color: Color(0xCC98E54D),
                      displayCategory: false,
                    ),
                    WidgetBox(
                      icon: Icon(
                        Icons.brush,
                        size: 50,
                        color: Color(0xFF6F38C5),
                      ),
                      title: "Aktivitas Kreatif",
                      category: "Meditasi",
                      color: Color(0xCC6F38C5),
                      displayCategory: false,
                    ),
                    WidgetBox(
                      icon: Icon(
                        Icons.favorite,
                        size: 50,
                        color: Color(0xFFE8A0BF),
                      ),
                      title: "Meditasi Kasih Sayang",
                      category: "Meditasi",
                      color: Color(0xCCE8B5BF),
                      displayCategory: false,
                    ),
                    WidgetBox(
                      icon: Icon(
                        Icons.warning,
                        size: 50,
                        color: Color(0xCCFFF93C),
                      ),
                      title: "Meditasi Darurat",
                      category: "Meditasi",
                      color: Color(0xCCFFC93C),
                      displayCategory: false,
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
