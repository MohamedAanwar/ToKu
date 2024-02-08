import 'package:flutter/material.dart';
import 'package:toku/components/itemphrases.dart';
import 'package:toku/models/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Phrases> phlist = const [
    Phrases("don't forget to subscribe", "Kodoku suru koto wasurenaide kudasai",
        "sounds/phrases/dont_forget_to_subscribe.wav"),
    Phrases("programming is easy", "puroguramingu wa kantandesu",
        "sounds/phrases/programming_is_easy.wav"),
    Phrases("where are you going ?", "Doko ni iku no ?",
        "sounds/phrases/where_are_you_going.wav"),
    Phrases(
        "are you coming ?", "Kimasu ka ?", "sounds/phrases/are_you_coming.wav"),
    Phrases("how are you feeling ?", "Go kibun wa ikagadesu ka ?",
        "sounds/phrases/how_are_you_feeling.wav"),
    Phrases("what is your name ?", "Namae wa nandesu k ?",
        "sounds/phrases/what_is_your_name.wav"),
    Phrases("i love programming", "Watashi wa puroguramingu ga daisukidesu",
        "sounds/phrases/i_love_programming.wav"),
    Phrases("i love anime", "Watashi wa anime ga daisukidesu",
        "sounds/phrases/i_love_anime.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Phrases',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
          itemCount: phlist.length,
          itemBuilder: (context, index) {
            return ItemPhrases(p: phlist[index]);
          },
        ),
      ),
    );
  }
}
