import 'package:flutter/material.dart';

class MyAppCoffee extends StatelessWidget {
  const MyAppCoffee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Coffee",
      debugShowCheckedModeBanner: false,
      home: MyAppBar(),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Coffee",
          style: TextStyle(color: Colors.brown),
        ),
        backgroundColor: Colors.amber[200],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.coffee),
          color: Colors.brown,
        ),
      ),
    );
  }
}
