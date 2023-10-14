import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String display = '0';

  circleButton({
    required label,
    required backgroundColor,
    required foregroundColor,
  }) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: FilledButton(
        style: FilledButton.styleFrom(
            padding: const EdgeInsets.all(8),
            minimumSize: const Size(100, 100),
            shape: const CircleBorder(),
            textStyle:
                const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor),
        onPressed: () {
          setState(() {});
        },
        child: Text(
          label,
        ),
      ),
    );
  }

  stadiumButton(
      {required label, required backgroundColor, required foregroundColor}) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: FilledButton(
        style: FilledButton.styleFrom(
            padding: const EdgeInsets.all(8),
            minimumSize: const Size(100, 100),
            shape: const StadiumBorder(),
            textStyle:
                const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor),
        onPressed: () {
          setState(() {});
        },
        child: Text(
          label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  display,
                  style: const TextStyle(
                      fontSize: 100, fontWeight: FontWeight.bold),
                )),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: circleButton(
                          label: 'AC',
                          backgroundColor: otherButtonColor,
                          foregroundColor: Colors.black),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '+/-',
                          backgroundColor: otherButtonColor,
                          foregroundColor: Colors.black),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '%',
                          backgroundColor: otherButtonColor,
                          foregroundColor: Colors.black),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '/',
                          backgroundColor: operationButtonColor,
                          foregroundColor: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: circleButton(
                          label: '7',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '8',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '9',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: circleButton(
                          label: 'X',
                          backgroundColor: operationButtonColor,
                          foregroundColor: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: circleButton(
                          label: '4',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '5',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '6',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '-',
                          backgroundColor: operationButtonColor,
                          foregroundColor: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: circleButton(
                          label: '1',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '2',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '3',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '+',
                          backgroundColor: operationButtonColor,
                          foregroundColor: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: stadiumButton(
                            label: '0',
                            backgroundColor: numberButtonColor,
                            foregroundColor: Colors.white)),
                    Expanded(
                      child: circleButton(
                          label: '.',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: circleButton(
                          label: '=',
                          backgroundColor: operationButtonColor,
                          foregroundColor: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
