import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const JeuxDesScreen());
}

class JeuxDesScreen extends StatelessWidget {
  const JeuxDesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text("DÉS"),
          ),
          backgroundColor: Colors.red,
        ),
        body: const JeuxDesScreene(),
      ),
    );
  }
}

class JeuxDesScreene extends StatefulWidget {
  const JeuxDesScreene({Key? key}) : super(key: key);
  @override
  JeuxDesScreeneState createState() => JeuxDesScreeneState();
}

class JeuxDesScreeneState extends State<JeuxDesScreene> {
  int numeroDeGauche = 1;
  int numeroDeDroite = 1;

  void jeux() {
    setState(
      () {
        numeroDeGauche = Random().nextInt(6) + 1;
        numeroDeDroite = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                jeux();
              },
              child: Image.asset('images/dice$numeroDeGauche.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                jeux();
              },
              child: Image.asset('images/dice$numeroDeDroite.png'),
            ),
          ),
        ],
      ),
    );
  }
}
