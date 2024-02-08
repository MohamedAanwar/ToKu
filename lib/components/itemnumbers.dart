import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Numbers.dart';

class ItemNumbers extends StatelessWidget {
  final Numbers n;
  const ItemNumbers({super.key, required this.n});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.orange,
      child: Row(
        children: [
          Container(
            child: Image.asset(n.imagp),
            color: Color(0xffFFF6DC),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  n.textge,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  n.texten,
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
                player.play(AssetSource(n.sound));
                player.setVolume(100);
              },
            ),
          ),
        ],
      ),
    );
  }
}
