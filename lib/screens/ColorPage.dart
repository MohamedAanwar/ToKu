import 'package:flutter/material.dart';
import 'package:toku/components/itemcolors.dart';
import 'package:toku/models/Colors.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Ccolors> colist = const [
    Ccolors("assets/images/colors/color_black.png", "black", "Burakku",
        "sounds/colors/black.wav"),
    Ccolors("assets/images/colors/color_brown.png", "brown", "Chairo",
        "sounds/colors/brown.wav"),
    Ccolors("assets/images/colors/color_dusty_yellow.png", "dusty yellow",
        "Hokori ppoi kiiro", "sounds/colors/dusty yellow.wav"),
    Ccolors("assets/images/colors/color_gray.png", "gray", "Gure",
        "sounds/colors/gray.wav"),
    Ccolors("assets/images/colors/color_green.png", "green", "Midori",
        "sounds/colors/green.wav"),
    Ccolors("assets/images/colors/color_red.png", "red", "Aka",
        "sounds/colors/red.wav"),
    Ccolors("assets/images/colors/color_white.png", "white", "Shiroi",
        "sounds/colors/white.wav"),
    Ccolors("assets/images/colors/yellow.png", "yellow", "Kiiro",
        "sounds/colors/yellow.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Colors',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
          itemCount: colist.length,
          itemBuilder: (context, index) {
            return ItemColors(c: colist[index]);
          },
        ),
      ),
    );
  }
}
