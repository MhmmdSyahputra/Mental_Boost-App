import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatKonselingScreen extends StatefulWidget {
  final String title;
  final Color color;
  const ChatKonselingScreen(
      {super.key, required this.title, required this.color});

  @override
  State<ChatKonselingScreen> createState() => _ChatKonselingScreenState();
}

class _ChatKonselingScreenState extends State<ChatKonselingScreen> {
  String _inputText = '';
  // TextEditingController _controller = TextEditingController(text: _inputText);
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
        backgroundColor: Color(0xFF4E37A9),
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
                              : Color(0xFF4E37A9),
                          borderRadius: BorderRadius.circular(8.0),
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
                    onChanged: (text) {
                      setState(() {
                        _inputText = text;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: 'Ask a question',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _inputText.isNotEmpty
                      ? () async {
                          final response = await getOpenAIResponse(_inputText);
                          setState(() {
                            _conversation
                                .add({'text': _inputText, 'isUser': true});
                            _conversation
                                .add({'text': response, 'isUser': false});
                            _inputText = '';
                          });
                        }
                      : null,
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
          '{"prompt": "$input", "max_tokens": 60, "model": "text-davinci-003"}');

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    final botResponse = jsonResponse['choices'][0]['text'];
    return botResponse;
    // return response.body;
  } else {
    return 'Error: ${response.statusCode}';
  }
}
