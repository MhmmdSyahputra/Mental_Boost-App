import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mentalboost/providers/questionQuizProvider.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:provider/provider.dart';

class ResultQuizScreen extends StatefulWidget {
  final List<Map<String, dynamic>> data;
  const ResultQuizScreen({super.key, required this.data});

  @override
  State<ResultQuizScreen> createState() => _ResultQuizScreenState();
}

class _ResultQuizScreenState extends State<ResultQuizScreen> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<QuestionQuizProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        toolbarHeight: 60,
        centerTitle: true,
        title: Text('Hasil'),
      ),
      body: Column(
        children: [
          // Text(widget.data.length.toString()),
          Column(
              children: List.generate(
            widget.data.length,
            (index) => Padding(
                padding: EdgeInsets.all(10),
                // child: WidgetDokter(data: Listdokter[index]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${index + 1}. ${widget.data[index]['question']}'),
                    Text('Jawaban Anda: ${widget.data[index]['answer']}'),
                  ],
                )),
          )),
          Text('Dari soal soal yang sudah anda jawab, dapat kami simpulkan'),
          Text('.....'),
          ElevatedButton(
            onPressed: () {},
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
    );
  }
}
