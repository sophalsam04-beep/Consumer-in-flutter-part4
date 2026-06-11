import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:self_learning2/models/counter_provider.dart';
import 'package:self_learning2/models/theme_provider.dart';
import 'package:self_learning2/pages/home_page.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
          create: (context) => CounterProvider(),
        ),

        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ScreenPage());
  }
}

class ScreenPage extends StatelessWidget {
  const ScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProvider>();
    final theme = context.watch<ThemeProvider>();
    return Scaffold(
      appBar: AppBar(title: Text("Theme provider")),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Text("${counter.count}", style: TextStyle(fontSize: 30)),
            SizedBox(height: 30),

            Switch(
              value: theme.isDark,
              onChanged: (value) {
                context.read<ThemeProvider>().isToggle();
              },
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().increment();
        },
        child: Icon(Icons.amp_stories_rounded),
      ),
    );
  }
}
