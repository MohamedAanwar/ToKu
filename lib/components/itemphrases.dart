import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/phrases.dart';

class ItemPhrases extends StatelessWidget {
  final Phrases p;
  const ItemPhrases({super.key, required this.p});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.blue,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  p.textge,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  p.texten,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(p.sound));
                player.setVolume(100);
              },
            ),
          ),
        ],
      ),
    );
  }
}
