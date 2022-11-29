import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class NotaWidget extends StatelessWidget {
  final Color? containerTus;
  final String? title;
  // null != pustoi
  // newMethod2(Color? containerTus,  )

  const NotaWidget({this.containerTus, this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets/assets/note2.wav"),
            autoStart: true,
            showNotification: true,
          );
          // final AudioPlayer audioPlayer = AudioPlayer();
          // audioPlayer.play('assets/notes/note_1.wav');
        },
        child: Container(
          width: double.infinity,
          color: containerTus!,
          child: Text(
            title!,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
