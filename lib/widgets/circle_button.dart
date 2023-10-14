import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;

  const CircleButton(
      {super.key,
      required this.label,
      required this.backgroundColor,
      required this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FilledButton(
        style: FilledButton.styleFrom(
            padding: const EdgeInsets.all(8),
            minimumSize: const Size(100, 100),
            shape: const CircleBorder(),
            textStyle:
                const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor),
        onPressed: () {},
        child: Text(
          label,
        ),
      ),
    );
  }
}
