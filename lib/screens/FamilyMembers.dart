import 'package:flutter/material.dart';
import 'package:toku/components/itemfamily.dart';
import 'package:toku/models/Family.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Family> famlist = const [
    Family("assets/images/family_members/family_father.png", "father",
        "Chichioya", "sounds/family_members/father.wav"),
    Family("assets/images/family_members/family_daughter.png", "daughter",
        "Musume", "sounds/family_members/daughter.wav"),
    Family("assets/images/family_members/family_grandfather.png", "grandfather",
        "Ojisan", "sounds/family_members/grand father.wav"),
    Family("assets/images/family_members/family_mother.png", "mother",
        "Hahaoya", "sounds/family_members/mother.wav"),
    Family("assets/images/family_members/family_grandmother.png",
        "grand mother", "Sobo", "sounds/family_members/grand mother.wav"),
    Family("assets/images/family_members/family_older_brother.png",
        "older brother", "Nisan", "sounds/family_members/older bother.wav"),
    Family("assets/images/family_members/family_older_sister.png",
        "older sister", "Ane", "sounds/family_members/older sister.wav"),
    Family("assets/images/family_members/family_son.png", "son", "Musuko",
        "sounds/family_members/son.wav"),
    Family(
        "assets/images/family_members/family_younger_brother.png",
        "younger brother",
        "Ototo",
        "sounds/family_members/younger brohter.wav"),
    Family("assets/images/family_members/family_younger_sister.png",
        "younger sister", "Imoto", "sounds/family_members/younger sister.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Family Members',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
          itemCount: famlist.length,
          itemBuilder: (context, index) {
            return ItemFamily(f: famlist[index]);
          },
        ),
      ),
    );
  }
}
