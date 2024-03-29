import 'package:flutter/material.dart';
import 'package:mentalboost/model/questionQuiz.dart';
import 'package:mentalboost/providers/questionQuizProvider.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/utils/data.dart';
import 'package:mentalboost/views/user/quiz/resultQuiz.dart';
import 'package:provider/provider.dart';

class DetailQuizScreen extends StatefulWidget {
  final String? category;
  const DetailQuizScreen({super.key, required this.category});

  @override
  State<DetailQuizScreen> createState() => _DetailQuizScreenState();
}

class _DetailQuizScreenState extends State<DetailQuizScreen> {
  String? selectedAnswer;
  int indexQuestion = 0;

  bool showBanner = false;
  showHideBanner(val) {
    setState(() {
      showBanner = !val;
    });
  }

  List<Map<String, dynamic>> dataQuestion = [];

  @override
  void initState() {
    super.initState();
    dataQuestion =
        ListQuestion.where((res) => res['category'] == widget.category)
            .map((res) {
      return {
        'question': res['question'],
        'option': res['option'],
      };
    }).toList();
  }

  void nextQuestion() {
    setState(() {
      if (indexQuestion >= dataQuestion.length - 1) {
        return;
      }
      indexQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<QuestionQuizProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        toolbarHeight: 60,
        title: Text('Quiz ${widget.category}'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (showBanner)
            MaterialBanner(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                backgroundColor: Color(0xCCFFE7A0),
                content: Text(
                    'Pilihan jawaban belum dipilih. Tolong pilih salah satu'),
                leading: CircleAvatar(child: Icon(Icons.warning)),
                actions: [
                  TextButton(
                      onPressed: showHideBanner(showBanner),
                      child: Text('Oke')),
                ]),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: ListTile(
              leading: Text(
                'Quiz-${indexQuestion} ${dataQuestion.length - 1}',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Text(
                'Soal ${indexQuestion + 1}',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: Text(dataQuestion[indexQuestion]['question'])),
                    Column(
                      children: (dataQuestion[indexQuestion]['option']
                              as List<List<dynamic>>)
                          .map((option) {
                        return Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: ColorConstants.boxColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: ChoiceChip(
                              selected: selectedAnswer == option[1],
                              onSelected: (selected) {
                                setState(() {
                                  selectedAnswer =
                                      selected ? option[1].toString() : null;
                                });
                              },
                              padding: EdgeInsets.all(10),
                              label: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        ColorConstants.primaryColor,
                                    child: Text('${option[0]}'),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(child: Text('${option[1]}'))
                                ],
                              ),
                            ));
                      }).toList(),
                      // ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 200,
            height: 90,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedAnswer == null ? showHideBanner(showBanner) : '';
                    if (indexQuestion >= dataQuestion.length - 1) {
                      List<Map<String, dynamic>> resultData =
                          prov.myAnswerList.map((res) {
                        return {
                          'question': res.question,
                          'answer': res.answer,
                        };
                      }).toList();

                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            ResultQuizScreen(data: resultData),
                      ));
                      prov.cleanAnswer();
                      return;
                    }
                    if (selectedAnswer!.isNotEmpty) {
                      prov.saveAnswer(QuestionQuizModel(
                          question: dataQuestion[indexQuestion]['question'],
                          answer: selectedAnswer.toString()));
                      selectedAnswer = null;
                      indexQuestion++;
                      return;
                    }
                  });
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: ColorConstants.primaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
