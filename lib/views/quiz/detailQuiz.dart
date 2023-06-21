import 'package:flutter/material.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/utils/data.dart';
import 'package:mentalboost/widgets/widgetQuestion.dart';

class DetailQuizScreen extends StatefulWidget {
  final String? category;
  const DetailQuizScreen({super.key, required this.category});

  @override
  State<DetailQuizScreen> createState() => _DetailQuizScreenState();
}

class _DetailQuizScreenState extends State<DetailQuizScreen> {
  String? selectedAnswer;
  int indexQuestion = 0;
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        toolbarHeight: 60,
        title: Text('Quiz ${widget.category}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: ListTile(
                leading: Text(
                  'Kuiz',
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
            Column(
              children: [
                WidgerQuestion(
                  question: dataQuestion[indexQuestion]['question'],
                  optionAns: dataQuestion[indexQuestion]['option'],
                )
              ],
            ),
            Container(
              width: 200,
              height: 90,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ElevatedButton(
                  onPressed: nextQuestion,
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
      ),
    );
  }
}
