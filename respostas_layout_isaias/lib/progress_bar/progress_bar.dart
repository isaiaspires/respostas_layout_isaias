import 'dart:async';

import 'package:flutter/material.dart';

class MyProgressBar extends StatelessWidget {
  const MyProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppProgress(),
      title: "My Progress Bar",
    );
  }
}

class MyAppProgress extends StatefulWidget {
  const MyAppProgress({Key? key}) : super(key: key);

  @override
  _MyAppProgressState createState() => _MyAppProgressState();
}

class _MyAppProgressState extends State<MyAppProgress> {
  double _initial = 0.0;
  String value = "";

  void update() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        _initial = _initial + 0.02;
      });
    });
  }

  Widget _stepIndicator() {
    String value = "";
    if (_initial == 0.0) {
      value = "Clique para iniciar o download";
    }
    if (_initial == 0.25) {
      value = "25%";
    }
    if (_initial == 0.5) {
      value = "50%";
    }
    if (_initial == 0.75) {
      value = "75%";
    }
    if (_initial == 1.0) {
      value = "Upload Concluído";
    }

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _initial = _initial + 0.25;
              });
            },
            child: const Text(
              "Upload",
            ),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 25.0,
          ),
        ),
        const SizedBox(height: 20.0),
        LinearProgressIndicator(
          minHeight: 10.0,
          value: _initial,
          valueColor: const AlwaysStoppedAnimation(Colors.orange),
          backgroundColor: Colors.yellow,
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // update();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              _stepIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
