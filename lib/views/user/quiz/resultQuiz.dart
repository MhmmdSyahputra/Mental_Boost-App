import 'package:flutter/material.dart';
import 'package:mentalboost/providers/questionQuizProvider.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ResultQuizScreen extends StatefulWidget {
  final List<Map<String, dynamic>> data;
  const ResultQuizScreen({super.key, required this.data});

  @override
  State<ResultQuizScreen> createState() => _ResultQuizScreenState();
}

class _ResultQuizScreenState extends State<ResultQuizScreen> {
  late String _openAIResponse = '';
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<QuestionQuizProvider>(context);

    String dataString = widget.data.map((item) {
      String question = item['question'];
      String answer = item['answer'];
      return '${question}Jawaban Anda: ${answer}';
    }).join('');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        toolbarHeight: 60,
        centerTitle: true,
        title: Text('Hasil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
                width: 400,
                child: Image.asset('assets/images/ilustration-predictive.png')),
            Text(_openAIResponse),
            ElevatedButton(
              onPressed: () async {
                String response = await getOpenAIResponse(dataString);
                setState(() {
                  _openAIResponse =
                      response; // Memperbarui nilai _openAIResponse
                });
              },
              child: Text(
                'Home',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: ColorConstants.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}

Future<String> getOpenAIResponse(String input) async {
  final response = await http.post(
      Uri.parse('https://api.openai.com/v1/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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' // Ganti dengan API Key Anda
      },
      body:
          '{"prompt": "anggap dirimu psikog. Simpulkan kepribadian ku ini dengan singkat, dan berikan saran darimu $input", "max_tokens": 200, "model": "text-davinci-003"}');

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    final botResponse = jsonResponse['choices'][0]['text'];
    return botResponse;
    // return response.body;
  } else {
    return 'Error: ${response.statusCode}';
  }
}
