import 'package:flutter/material.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/quiz/detailQuiz.dart';

class WidgetQuizBox extends StatefulWidget {
  final data;
  const WidgetQuizBox({super.key, this.data});

  @override
  State<WidgetQuizBox> createState() => _WidgetQuizBoxState();
}

class _WidgetQuizBoxState extends State<WidgetQuizBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                DetailQuizScreen(category: widget.data['categoryQuiz'])))
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.boxColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.data['coverQuiz']),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.data['titleQuiz'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            widget.data['descripsiQuiz'],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 40),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.chevron_right),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            primary: ColorConstants.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
