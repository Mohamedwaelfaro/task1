import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/screens/home.dart';
import 'package:task1/screens/menue_provider.dart';

void main() {
  runApp(Task1());
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (context) => MenueProvider(),
        )
      ], child: Home()),
    );
  }
}
