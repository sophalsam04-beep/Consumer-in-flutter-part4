import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:self_learning2/models/counter_provider.dart';
import 'package:self_learning2/pages/home_page.dart';

void main(List<String> args) {
  runApp(
    ChangeNotifierProvider<CounterProvider>(
      create: (context) => CounterProvider(),

      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: HomePage());
  }
}
