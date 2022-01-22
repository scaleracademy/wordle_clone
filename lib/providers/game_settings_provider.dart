import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameSettings {
  final int wordsize;
  final int attempts;

  GameSettings({required this.wordsize, required this.attempts});

  GameSettings clone({int? wordsize, int? attempts}) {
    return GameSettings(
        attempts: attempts ?? this.attempts,
        wordsize: wordsize ?? this.wordsize);
  }
}

class GameSettingsNotifier extends StateNotifier<GameSettings> {
  GameSettingsNotifier() : super(GameSettings(wordsize: 5, attempts: 6));

  void updateAttempts(int attempts) {
    state = state.clone(attempts: attempts);
  }

  void updateWordsize(int wordsize) {
    state = state.clone(wordsize: wordsize);
  }
}

final gameSettingsProvider =
    StateNotifierProvider<GameSettingsNotifier, GameSettings>((ref) {
  return GameSettingsNotifier();
});
