import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound({required int noteNumber}) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$noteNumber.wav"),
    );
  }

  Expanded buildKey(
      {required Color backColor,
      required int soundNumber,
      required String notaAd}) {
    return Expanded(
      flex: 1,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backColor,
        ),
        child: Text(
          notaAd,
          style: TextStyle(fontSize: 50, color: Colors.white),
        ),
        onPressed: () {
          playSound(noteNumber: soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               buildKey(backColor: Colors.purpleAccent, soundNumber: 1, notaAd: "DO"),
                buildKey(backColor: Colors.pinkAccent, soundNumber: 2,notaAd: "RE"),
                buildKey(backColor: Colors.redAccent, soundNumber: 3,notaAd: "Mİ"),
                buildKey(backColor: Colors.orangeAccent, soundNumber: 4,notaAd: "FA"),
                buildKey(backColor: Colors.yellowAccent, soundNumber: 5,notaAd: "SOL"),
                buildKey(backColor: Colors.greenAccent, soundNumber: 6,notaAd: "LA"),
                buildKey(backColor: Colors.blueAccent, soundNumber: 7,notaAd: "Sİ"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
