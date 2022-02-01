import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordle_clone/widgets/wordle_page.dart';

void main() {
  const providerScopedApp =  ProviderScope(child: MyApp());
  FlutterError.onError = (FlutterErrorDetails details) {

  };
  runApp(providerScopedApp);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WordlePage(),
    );
  }
}
