import 'package:flutter/material.dart';
import 'package:self_learning2/models/counter_provider.dart';
import 'package:self_learning2/pages/home_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Consumer",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Consumer<CounterProvider>(
        builder: (context, myType, child) {
          return Center(
            child: Text("${myType.count}", style: TextStyle(fontSize: 45)),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().increment();
        },
        child: Icon(Icons.more),
      ),
    );
  }
}
