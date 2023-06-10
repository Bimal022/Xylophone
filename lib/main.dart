import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    xylophone(),
  );
}

class xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    AssetsAudioPlayer.newPlayer().open(Audio("assets/note$soundNumber.wav"));
  }

  Expanded appLayout({required int soundNumber, required Color clr}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          color: clr,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: <Widget>[
          appLayout(soundNumber: 1, clr: Colors.red),
          appLayout(soundNumber: 2, clr: Colors.orange),
          appLayout(soundNumber: 3, clr: Colors.yellow),
          appLayout(soundNumber: 4, clr: Colors.green),
          appLayout(soundNumber: 5, clr: Colors.blue),
          appLayout(soundNumber: 6, clr: Colors.indigo),
          appLayout(soundNumber: 7, clr: Colors.teal)
        ],
      ),
    );
  }
}
