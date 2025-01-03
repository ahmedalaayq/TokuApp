import 'package:flutter/material.dart';

class TokuSection extends StatelessWidget {
  const TokuSection(
      {super.key, required this.color, required this.sectionText, required this.onTap});
  final Color color;
  final VoidCallback onTap;
  final String sectionText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        color: color,
        width: double.infinity,
        height: 70,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 12),
        child: Text(
          sectionText,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
