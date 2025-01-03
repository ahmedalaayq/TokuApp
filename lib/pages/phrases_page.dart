import 'package:flutter/material.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.brown[800],
          title: Text(
            'Phrases',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
        ),
    );
  }
}