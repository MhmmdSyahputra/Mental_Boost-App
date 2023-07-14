import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mentalboost/utils/Mycolor.dart';

class ChatKonselingScreen extends StatefulWidget {
  final String title;
  final Color color;
  const ChatKonselingScreen(
      {super.key, required this.title, required this.color});

  @override
  State<ChatKonselingScreen> createState() => _ChatKonselingScreenState();
}

class _ChatKonselingScreenState extends State<ChatKonselingScreen> {
  // String _inputText = '';
  TextEditingController _inputMsgcontroller = TextEditingController();
  List<Map<String, dynamic>> _conversation = [
    {
      'text': "Masalah Apa yang anda hadapi? Cerita kan semua disini",
      'isUser': false
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        toolbarHeight: 60,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _conversation.length,
              itemBuilder: (context, index) {
                final message = _conversation[index];
                return Row(
                  mainAxisAlignment: message['isUser']
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        width: 280,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: message['isUser']
                              ? Colors.grey[200]
                              : ColorConstants.primaryColor,
                          borderRadius: message['isUser']
                              ? BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20))
                              : BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                        ),
                        child: Text(
                          message['text'],
                          textAlign: message['isUser']
                              ? TextAlign.end
                              : TextAlign.start,
                          style: TextStyle(
                            color:
                                message['isUser'] ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Divider(
            height: 1.0,
            color: Colors.grey[400],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _inputMsgcontroller,
                    decoration: const InputDecoration(
                      hintText: 'Ask a question',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      _conversation.add(
                          {'text': _inputMsgcontroller.text, 'isUser': true});
                    });
                    final response =
                        await getOpenAIResponse(_inputMsgcontroller.text);
                    setState(() {
                      _conversation.add({'text': response, 'isUser': false});
                      _inputMsgcontroller.text = '';
                    });
                    _inputMsgcontroller.text = '';
                  },
                  child: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
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
          '{"prompt": "$input", "max_tokens": 500, "model": "text-davinci-003"}');

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    final botResponse = jsonResponse['choices'][0]['text'];
    return botResponse;
    // return response.body;
  } else {
    return 'Error: ${response.statusCode}';
  }
}
