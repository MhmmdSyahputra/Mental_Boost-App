import 'package:flutter/material.dart';
import 'package:mentalboost/utils/data.dart';
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
                  children: List.generate(
                      Listmeditasi.length,
                      (index) => Padding(
                            padding: EdgeInsets.all(0),
                            child: WidgetBox(data: Listmeditasi[index]),
                          )),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
