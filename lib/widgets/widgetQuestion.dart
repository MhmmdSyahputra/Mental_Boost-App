import 'package:flutter/material.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/utils/data.dart';

class WidgerQuestion extends StatefulWidget {
  final String question;
  final List optionAns;
  const WidgerQuestion(
      {super.key, required this.question, required this.optionAns});

  @override
  State<WidgerQuestion> createState() => _WidgerQuestionState();
}

class _WidgerQuestionState extends State<WidgerQuestion> {
  String? selectedAnswer;
  int totalSoal = ListQuestion.length - 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(widget.question)),
        Column(
          children: (widget.optionAns as List<List<dynamic>>).map((option) {
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
                  selected: selectedAnswer == option[0],
                  onSelected: (selected) {
                    setState(() {
                      selectedAnswer = selected ? option[0].toString() : null;
                    });
                  },
                  padding: EdgeInsets.all(10),
                  label: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorConstants.primaryColor,
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
    );
  }
}
