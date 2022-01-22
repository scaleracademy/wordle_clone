import 'package:flutter/cupertino.dart';
import 'package:wordle_clone/widgets/wordle_key.dart';

class WordleKeyboard extends StatelessWidget {
  const WordleKeyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i in "QWERTYUIOP".split("")) WordleKey(i)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i in "ASDFGHJKL".split("")) WordleKey(i)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i in "_ZXCVBNM<".split("")) WordleKey(i)
          ],
        ),
      ],
    );
  }
}
