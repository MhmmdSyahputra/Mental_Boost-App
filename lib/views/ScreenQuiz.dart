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
                        "Quiz Penenang Untuk mu",
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
                      coverQuiz:
                          "https://images.unsplash.com/photo-1634128221889-82ed6efebfc3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bGFuZ3VhZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                      titleQuiz: "Quiz Bahasa",
                      descripsiQuiz: "Kosakata, tata bahasa, dan literatur",
                    ),
                    WidgetQuizBox(
                      idQuiz: 2,
                      coverQuiz:
                          "https://images.unsplash.com/photo-1618590067824-5ba32ca76ce9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29uYWxpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                      titleQuiz: "Kuiz Kepribadian",
                      descripsiQuiz: "mempelajari tentang diri mereka sendiri",
                    ),
                    WidgetQuizBox(
                      idQuiz: 3,
                      coverQuiz:
                          "https://images.unsplash.com/photo-1542204165-65bf26472b9b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmlsbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
                      titleQuiz: "Kuiz Film dan TV",
                      descripsiQuiz:
                          "topik seperti karakter, sutradara, dan penghargaan.",
                    ),
                    WidgetQuizBox(
                      idQuiz: 4,
                      coverQuiz:
                          "https://images.unsplash.com/photo-1477233534935-f5e6fe7c1159?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG11c2ljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                      titleQuiz: "Kuiz Musik",
                      descripsiQuiz:
                          "topik seperti artis, genre, dan sejarah musik.",
                    ),
                    WidgetQuizBox(
                      idQuiz: 5,
                      coverQuiz:
                          "https://images.unsplash.com/photo-1553481187-be93c21490a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2FtZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
                      titleQuiz: "Kuiz Game",
                      descripsiQuiz:
                          "topik seperti karakter, plot, dan permainan video.",
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
