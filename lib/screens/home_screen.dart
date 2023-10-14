import 'package:calculator/constants.dart';
import 'package:calculator/widgets/circle_button.dart';
import 'package:calculator/widgets/stadium_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            child: Container(
              child: const Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '100',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          const Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CircleButton(
                          label: 'AC',
                          backgroundColor: otherButtonColor,
                          foregroundColor: Colors.black),
                    ),
                    Expanded(
                      child: CircleButton(
                          label: '+/-',
                          backgroundColor: otherButtonColor,
                          foregroundColor: Colors.black),
                    ),
                    Expanded(
                      child: CircleButton(
                          label: '%',
                          backgroundColor: otherButtonColor,
                          foregroundColor: Colors.black),
                    ),
                    Expanded(
                      child: CircleButton(
                          label: '/',
                          backgroundColor: operationButtonColor,
                          foregroundColor: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CircleButton(
                          label: '7',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: CircleButton(
                          label: '8',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: CircleButton(
                          label: '9',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: CircleButton(
                          label: 'X',
                          backgroundColor: operationButtonColor,
                          foregroundColor: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CircleButton(
                          label: '4',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: CircleButton(
                          label: '5',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: CircleButton(
                          label: '6',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: CircleButton(
                          label: '-',
                          backgroundColor: operationButtonColor,
                          foregroundColor: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CircleButton(
                          label: '1',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: CircleButton(
                          label: '2',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: CircleButton(
                          label: '3',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: CircleButton(
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
                        child: StadiumButton(
                            label: '0',
                            backgroundColor: numberButtonColor,
                            foregroundColor: Colors.white)),
                    Expanded(
                      child: CircleButton(
                          label: '.',
                          backgroundColor: numberButtonColor,
                          foregroundColor: Colors.white),
                    ),
                    Expanded(
                      child: CircleButton(
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
