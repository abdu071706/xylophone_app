import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class WelcomeUI extends StatelessWidget {
  const WelcomeUI();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            NotaWidget(
              containerTus: Colors.amber,
              title: '',
              notaNumber: '1',
            ),
            NotaWidget(
              containerTus: Colors.red,
              title: '',
              notaNumber: '2',
            ),
            NotaWidget(
              containerTus: Colors.pink,
              title: '',
              notaNumber: '3',
            ),
            NotaWidget(
              containerTus: Colors.teal,
              title: '',
              notaNumber: '4',
            ),
            NotaWidget(
              containerTus: Colors.blue,
              title: '',
              notaNumber: '',
            ),
            NotaWidget(
              containerTus: Colors.black,
              title: '',
              notaNumber: '6',
            ),
            NotaWidget(
              containerTus: Colors.green,
              title: '',
              notaNumber: '7',
            ),
          ],
        ),
      ),
    );
  }

  Expanded newMethod1({
    Color? containerTus,
    String? text,
    @required Color? textColor,
    String? noteNumber,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets_assets_note$noteNumber.wav"),
            autoStart: true,
            showNotification: true,
          );

        },
        child: Container(
          width: double.infinity,
          color: containerTus,
          child: Text(
            'Note:$text ',
            style: TextStyle(
              fontSize: 30,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  Expanded newMethod2(
    Color? containerTus,
    String? text,
    Color? textColor,
  ) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets_assets_note1.wav"),
            autoStart: true,
            showNotification: true,
          );
        },
        child: Container(
          width: double.infinity,
          color: containerTus,
          child: Text(
            'Note:$text ',
            style: TextStyle(
              fontSize: 30,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

class NotaWidget extends StatelessWidget {
  final Color? containerTus;
  final String? title;
  final String? notaNumber;

  const NotaWidget({
    super.key,
    this.containerTus,
    this.title,
    this.notaNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets_assets_note$notaNumber.wav"),
            autoStart: true,
            showNotification: true,
          );
        },
        child: Container(
          width: double.infinity,
          color: containerTus,
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
