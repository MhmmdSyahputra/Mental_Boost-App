import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageHomeDokter extends StatefulWidget {
  const PageHomeDokter({super.key});

  @override
  State<PageHomeDokter> createState() => _PageHomeDokterState();
}

class _PageHomeDokterState extends State<PageHomeDokter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('Home')],
    );
  }
}
