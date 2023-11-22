import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_david/utils/providers/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = context.watch<CounterProvider>();

    return Scaffold(
      floatingActionButton: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
          ),
          FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                counterProvider.counterAddOne();
              },
              child: const Text("+",
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 176, 57),
                      fontSize: 30,
                      fontWeight: FontWeight.bold))),
          FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                counterProvider.counterMinusOne();
              },
              child: const Text("-",
                  style: TextStyle(
                      color: Color.fromARGB(255, 176, 2, 2),
                      fontSize: 30,
                      fontWeight: FontWeight.bold))),
        ],
      ),
      body: Center(
        child: counterProvider.counter > 0
            ? Text("${counterProvider.counter}",
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.green))
            : Text("${counterProvider.counter}",
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold ,color:Colors.red)),
      ),
    );
  }
}
