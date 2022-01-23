import 'package:flutter/material.dart';
import 'package:wordle_clone/widgets/wordle_letterbox.dart';

class WordleRow extends StatelessWidget {
  final int wordsize;
  final String word;
  final String correctWord;
  final bool attempted;

  const WordleRow(
      {Key? key,
      required this.wordsize,
      required this.word,
      required this.correctWord,
      required this.attempted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<WordleLetterbox> boxes = List.empty(growable: true);

    for (int j = 0; j < wordsize; j++) {
      var letter = "";
      if (word.length > j) {
        letter = word[j];
      }
      boxes.add(WordleLetterbox(
        pos: j,
        letter: letter,
        attempted: attempted,
        correctWord: correctWord,
      ));
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: boxes,
    );
  }
}
