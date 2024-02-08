import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Colors.dart';

class ItemColors extends StatelessWidget {
  final Ccolors c;
  const ItemColors({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.purple,
      child: Row(
        children: [
          Container(
            child: Image.asset(c.imagp),
            color: Color(0xffFFF6DC),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  c.textge,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  c.texten,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
                player.play(AssetSource(c.sound));
                player.setVolume(100);
              },
            ),
          ),
        ],
      ),
    );
  }
}
