import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final int percent;

  const CustomProgressIndicator({
    Key? key,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = percent < 100 ? Colors.yellow[900] : Colors.green;

    return LinearProgressIndicator(
      value: percent / 100,
      minHeight: 16.0,
      backgroundColor: Colors.yellow[700],
      color: color,
    );
  }
}
