import 'package:flutter/material.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class DetailTipsScreen extends StatelessWidget {
  final data;
  const DetailTipsScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '${data['titleTips']}',
            maxLines: 2,
            style: TextStyle(fontSize: 16),
          ),
          backgroundColor: ColorConstants.primaryColor,
          toolbarHeight: 60,
        ),
        body: Markdown(data: data['contentTips']));
  }
}
