import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordle_clone/providers/game_settings_provider.dart';
import 'package:wordle_clone/widgets/wordle_row.dart';

class WordleGrid extends ConsumerWidget {
  const WordleGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSettings = ref.watch(gameSettingsProvider);
    final wordSize = gameSettings.wordsize;
    final List<WordleRow> rows = List.empty(growable: true);
    for (int i = 0; i < gameSettings.attempts; i++) {
      rows.add(WordleRow(wordsize: wordSize,));
    }
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: rows,
      ),
    );
  }
}
