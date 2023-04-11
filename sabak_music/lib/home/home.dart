import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget notas(String a, Color b) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          AudioPlayer().play(
            AssetSource(a),
          );
        },
        child: Container(
          color: b,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter hylophone'),
      ),
      body: Column(
        children: [
          notas('notes/do.mp3', Colors.red),
          notas('notes/re.mp3', Colors.orange),
          notas('notes/mi.mp3', Colors.yellow),
          notas('notes/fa.mp3', Colors.greenAccent),
          notas('notes/sol.mp3', Colors.blueAccent),
          notas('notes/lya.mp3', Colors.lightBlue),
          notas('notes/si.mp3', Colors.purple),
          notas('notes/do2.mp3', Colors.black),
        ],
      ),
    );
  }
}
