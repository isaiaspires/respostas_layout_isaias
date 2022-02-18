import 'dart:math';

import 'package:flutter/material.dart';
import 'package:respostas_layout/progress_bar/custom_progress_indicator.dart';

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProgressPage(),
    );
  }
}

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  var progress = 0;

  void setProgress(int value) {
    setState(() => progress = value);
  }

  String get status {
    if (progress == 0) {
      return "Clique para iniciar o upload";
    }
    if (progress < 100) {
      return "$progress%";
    }
    return "Upload completo";
  }

  void upload() {
    final random = Random();
    final value = random.nextInt(10);
    setProgress(progress + value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Barra de Progresso"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              label: const Text("Upload"),
              icon: const Icon(Icons.upload),
              onPressed: upload,
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Text(status),
            const SizedBox(height: 10.0),
            CustomProgressIndicator(
              percent: progress,
            )
          ],
        ),
      ),
    );
  }
}
