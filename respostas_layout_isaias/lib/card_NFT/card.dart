import 'package:flutter/material.dart';

class CardNFT extends StatelessWidget {
  const CardNFT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Card NFT",
      debugShowCheckedModeBanner: false,
      home: CardApp(),
    );
  }
}

class CardApp extends StatelessWidget {
  const CardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 7, 36, 82),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(
              "https://i.imgur.com/w39qzaq.png",
              // height: 350,
              // width: 350,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              child: Text(
                "Equilibrium #3429",
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(fontSize: 20, color: Colors.cyanAccent.shade200),
              ),
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              child: Text(
                "Nossa coleção Equilibrium promove calma e balanço",
                style:
                    TextStyle(fontSize: 12.0, color: Colors.lightBlue.shade100),
              ),
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "0.041 ETH",
                  style: TextStyle(
                      fontSize: 15, color: Colors.cyanAccent.shade200),
                ),
                const Align(
                  widthFactor: 1.0,
                ),
                Icon(
                  Icons.timer,
                  color: Colors.cyanAccent.shade200,
                ),
                Text(
                  "restam 3 dias",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.cyanAccent.shade200,
                  ),
                ),
              ],
            ),
            Card(
              color: const Color.fromARGB(255, 7, 36, 82),
              child: ListTile(
                title: Text(
                  "Criado por Isaias Oliveira",
                  style: TextStyle(color: Colors.lightBlue.shade100),
                ),
                leading: const CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://i.imgur.com/w39qzaq.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
