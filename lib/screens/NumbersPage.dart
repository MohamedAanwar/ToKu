import 'package:flutter/material.dart';
import 'package:toku/components/itemnumbers.dart';
import 'package:toku/models/Numbers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Numbers> nolist = const [
    Numbers("assets/images/numbers/number_one.png", "one", "ichi",
        "sounds/numbers/number_one_sound.mp3"),
    Numbers("assets/images/numbers/number_two.png", "two", "Ni",
        "sounds/numbers/number_two_sound.mp3"),
    Numbers("assets/images/numbers/number_three.png", "three", "San",
        "sounds/numbers/number_three_sound.mp3"),
    Numbers("assets/images/numbers/number_four.png", "four", "Shi",
        "sounds/numbers/number_four_sound.mp3"),
    Numbers("assets/images/numbers/number_five.png", "five", "Go",
        "sounds/numbers/number_five_sound.mp3"),
    Numbers("assets/images/numbers/number_six.png", "six", "Roku",
        "sounds/numbers/number_six_sound.mp3"),
    Numbers("assets/images/numbers/number_seven.png", "seven", "Sebun",
        "sounds/numbers/number_seven_sound.mp3"),
    Numbers("assets/images/numbers/number_eight.png", "eight", "hachi",
        "sounds/numbers/number_eight_sound.mp3"),
    Numbers("assets/images/numbers/number_nine.png", "nine", "Kyu",
        "sounds/numbers/number_nine_sound.mp3"),
    Numbers("assets/images/numbers/number_ten.png", "ten", "Ju",
        "sounds/numbers/number_ten_sound.mp3"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Numbers',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
          itemCount: nolist.length,
          itemBuilder: (context, index) {
            return ItemNumbers(n: nolist[index]);
          },
        ),
      ),
    );
  }
}
