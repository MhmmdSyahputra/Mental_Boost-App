import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
        backgroundColor: Color(0xFF4E37A9),
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
