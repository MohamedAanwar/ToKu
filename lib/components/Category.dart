import 'package:flutter/material.dart';

class category extends StatelessWidget {
  final String name;
  final Color color;
  final Function() ontap;
  const category(
      {required this.name, required this.color, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 65,
        child: Text(
          name,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        color: color,
      ),
    );
  }
}
