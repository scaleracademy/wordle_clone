import 'package:flutter/material.dart';
import 'package:wordle_clone/widgets/wordle_row.dart';

const rows = 6;

class WordleGrid extends StatelessWidget {
  const WordleGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WordleRow(),
          WordleRow(),
          WordleRow(),
          WordleRow(),
          WordleRow(),
          WordleRow(),
        ],
      ),
    );
  }
}
