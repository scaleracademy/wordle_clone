import 'package:flutter/material.dart';
import 'package:wordle_clone/widgets/wordle_letterbox.dart';

const wordsize = 5;

class WordleRow extends StatelessWidget {
  const WordleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<WordleLetterbox> boxes = List.empty(growable: true);

    for (int j = 0; j < wordsize; j++) {
      boxes.add(WordleLetterbox());
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: boxes,
    );
  }
}
