import 'package:flutter/material.dart';
import 'package:toku/components/Category.dart';
import 'package:toku/screens/ColorPage.dart';
import 'package:toku/screens/FamilyMembers.dart';
import 'package:toku/screens/NumbersPage.dart';
import 'package:toku/screens/Phrases.dart';
import 'package:toku/screens/info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ToKu',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Pacifico',
                fontSize: 28),
          ),
          backgroundColor: Color(0xff46322B),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Info()));
                },
                icon: Icon(
                  Icons.info,
                  color: Colors.white,
                ))
          ],
        ),
        body: Column(
          children: [
            category(
              name: "Numbers",
              color: Colors.orange,
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NumbersPage()));
              },
            ),
            category(
              name: "Family Members",
              color: Colors.green,
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FamilyMembers()));
              },
            ),
            category(
              name: "Colors",
              color: Colors.purple,
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ColorsPage()));
              },
            ),
            category(
              name: "Phrases",
              color: Colors.blue,
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PhrasesPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
