import 'package:calculator/constants.dart';
import 'package:calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: const HomeScreen(),
      theme: ThemeData(
          canvasColor: Colors.black,
          appBarTheme: const AppBarTheme(
              centerTitle: false,
              backgroundColor: Colors.black,
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
    );
  }
}

void main(List<String> args) {
  runApp(const App());
}
