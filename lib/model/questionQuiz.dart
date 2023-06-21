import 'package:flutter/material.dart';

class QuestionQuizModel {
  final String id;
  final String question;
  final List option;
  final String answer;

  QuestionQuizModel({
    required this.id,
    required this.question,
    required this.option,
    required this.answer,
  });
}
