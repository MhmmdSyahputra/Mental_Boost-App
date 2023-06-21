import 'package:flutter/material.dart';
import 'package:mentalboost/model/questionQuiz.dart';

class QuestionQuizProvider with ChangeNotifier {
  List<QuestionQuizModel> _myAnswerList = [];

  List<QuestionQuizModel> get myAnswerList => _myAnswerList;

  void saveAnswer(QuestionQuizModel data) {
    _myAnswerList.add(data);
    notifyListeners();
  }

  void cleanAnswer() {
    _myAnswerList.clear();
    notifyListeners();
  }
}
