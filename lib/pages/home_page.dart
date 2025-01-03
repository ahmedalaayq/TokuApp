import 'package:flutter/material.dart';
import 'package:toku_app/pages/colors_page.dart';
import 'package:toku_app/pages/family_members_page.dart';
import 'package:toku_app/pages/numbers_page.dart';
import 'package:toku_app/pages/phrases_page.dart';
import 'package:toku_app/widgets/toku_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 217, 193),
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.brown[800],
          title: Text(
            'Toku',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
        ),
        body: Column(
          children: [
            TokuSection(
              color: Colors.orange,
              sectionText: 'Numbers',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NumbersPage();
                }));
              },
            ),
            TokuSection(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FamilyMembersPage();
                }));
              },
              color: Colors.green,
              sectionText: 'Family Members',
            ),
            TokuSection(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              },
              color: Colors.purple,
              sectionText: 'Colors',
            ),
            TokuSection(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PhrasesPage();
                }));
              },
              color: Colors.blueAccent,
              sectionText: 'Phrases',
            ),
          ],
        ));
  }
}
