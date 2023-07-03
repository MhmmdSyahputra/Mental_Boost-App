import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageProfileDokter extends StatefulWidget {
  const PageProfileDokter({super.key});

  @override
  State<PageProfileDokter> createState() => _PageProfileDokterState();
}

class _PageProfileDokterState extends State<PageProfileDokter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('Profile')],
    );
  }
}
