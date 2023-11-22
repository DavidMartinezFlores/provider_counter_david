import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_david/screens/home_screen.dart';
import 'package:provider_counter_david/utils/providers/counter_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider(),)
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
      ),
    );
  }
}
