import 'package:flutter/material.dart';
import '../utils/data.dart';
import '../widgets/widgetQuizBox.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

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
                        'Quiz Penenang Untuk mu',
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
                    children: List.generate(
                        Listquiz.length,
                        (index) => Padding(
                              padding: EdgeInsets.all(0),
                              child: WidgetQuizBox(data: Listquiz[index]),
                            ))),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
