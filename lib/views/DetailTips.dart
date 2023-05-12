import 'package:flutter/material.dart';
import 'package:mentalboost/utils/Mycolor.dart';

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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [Text(data['titleTips'])],
            ),
          )
        ],
      ),
    );
  }
}
