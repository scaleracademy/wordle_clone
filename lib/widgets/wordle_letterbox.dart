import 'package:flutter/material.dart';

class WordleLetterbox extends StatelessWidget {
  const WordleLetterbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
      ),
    );
  }
}
