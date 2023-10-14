import 'package:flutter/material.dart';

class StadiumButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;

  const StadiumButton(
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
            shape: const StadiumBorder(),
            textStyle:
                const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
