

import 'dart:convert';

import 'package:flutter/services.dart';

Future<List<String>> loadWords(int wordLength) async {
  final data = await rootBundle.loadString("assets/${wordLength}-letter-words.json");

  return (jsonDecode(data) as List<dynamic>).cast<String>();
}
