import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mentalboost/utils/data.dart';

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
                    // children:
                    //     Listartikel.map((e) => Text(e['titleTips'])).toList(),
                    children: List.generate(
                        Listartikel.length,
                        (index) => Padding(
                              padding: EdgeInsets.all(0),
                              child: WidgetTips(data: Listartikel[index]),
                            ))),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
