import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Menu Drawer",
        debugShowCheckedModeBanner: false,
        home: MyAppBar());
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu Drawer",
          style: TextStyle(color: Colors.pink.shade100),
        ),
        //Mudando a cor do hamburguer
        iconTheme: IconThemeData(color: Colors.pink.shade100),
        backgroundColor: Colors.pink,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.pink.shade100,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text("Flutter"),
              subtitle: const Text("Tudo são widgets"),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.keyboard_arrow_right),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.flash_on),
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text("Dart"),
              subtitle: const Text("É muito forte"),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.keyboard_arrow_right),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mood),
                color: Colors.red,
              ),
            ),
            ListTile(
              title: const Text("Cafe"),
              subtitle: const Text("Quero cafééé"),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.keyboard_arrow_right),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.local_cafe),
                color: Colors.brown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
