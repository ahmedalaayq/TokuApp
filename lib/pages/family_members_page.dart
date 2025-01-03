import 'package:flutter/material.dart';
import 'package:toku_app/model/number_model.dart';
import 'package:toku_app/widgets/numbers_part.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<NumberModel> numbers = const [
    NumberModel(
        jpName: 'Chichioya',
        enName: 'father',
        image: 'assets/images/family_members/family_father.png'),
    NumberModel(
        jpName: 'Musume',
        enName: 'daughter',
        image: 'assets/images/family_members/family_daughter.png'),
    NumberModel(
        jpName: 'Ojisan',
        enName: 'Grand Father',
        image: 'assets/images/family_members/family_grandfather.png'),
    NumberModel(
        jpName: 'Hahaoya ',
        enName: 'Mother',
        image: 'assets/images/family_members/family_mother.png'),
    NumberModel(
        jpName: 'Sobo',
        enName: 'Grand Mother',
        image: 'assets/images/family_members/family_grandmother.png'),
    NumberModel(
        jpName: 'Nisan',
        enName: 'Older Brother',
        image: 'assets/images/family_members/family_older_brother.png'),
    NumberModel(
        jpName: 'Ane',
        enName: 'Older Sister',
        image: 'assets/images/family_members/family_older_sister.png'),
    NumberModel(
        jpName: 'Musuko',
        enName: 'Son',
        image: 'assets/images/family_members/family_son.png'),
    NumberModel(
        jpName: 'Jsorf ',
        enName: 'Younger Brother',
        image: 'assets/images/family_members/family_younger_brother.png'),
    NumberModel(
        jpName: 'Siso',
        enName: 'Younger Sister',
        image: 'assets/images/family_members/family_younger_sister.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.brown[800],
          title: Text(
            'Family Members',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return NumbersPart(number: numbers[index],sectionColor: Colors.green,);
          },
        ));
  }
}
