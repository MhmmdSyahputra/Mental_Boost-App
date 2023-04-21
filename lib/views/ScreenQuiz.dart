import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
                  children: <Widget>[
                    WidgetQuizBox(
                      idQuiz: 1,
                      coverQuiz: 'assets/images/quiz/quiz-1.png',
                      titleQuiz: 'Quiz Bahasa',
                      descripsiQuiz: 'Kosakata, tata bahasa, dan literatur',
                    ),
                    WidgetQuizBox(
                      idQuiz: 2,
                      coverQuiz: 'assets/images/quiz/quiz-2.png',
                      titleQuiz: 'Kuiz Kepribadian',
                      descripsiQuiz: 'mempelajari tentang diri mereka sendiri',
                    ),
                    WidgetQuizBox(
                      idQuiz: 3,
                      coverQuiz: 'assets/images/quiz/quiz-3.png',
                      titleQuiz: 'Kuiz Film dan TV',
                      descripsiQuiz:
                          'topik seperti karakter, sutradara, dan penghargaan.',
                    ),
                    WidgetQuizBox(
                      idQuiz: 4,
                      coverQuiz: 'assets/images/quiz/quiz-4.png',
                      titleQuiz: 'Kuiz Musik',
                      descripsiQuiz:
                          'topik seperti artis, genre, dan sejarah musik.',
                    ),
                    WidgetQuizBox(
                      idQuiz: 5,
                      coverQuiz: 'assets/images/quiz/quiz-5.png',
                      titleQuiz: 'Kuiz Game',
                      descripsiQuiz:
                          'topik seperti karakter, plot, dan permainan video.',
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
