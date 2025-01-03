import 'package:flutter/material.dart';
import 'package:toku_app/model/number_model.dart';
import 'package:toku_app/widgets/numbers_part.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<NumberModel> numbers = const [
    NumberModel(
        jpName: 'Kuro',
        enName: 'Black',
        image: 'assets/images/colors/color_black.png'),
    NumberModel(
        jpName: 'Chairo',
        enName: 'Brown',
        image: 'assets/images/colors/color_brown.png'),
    NumberModel(
        jpName: 'Kusunda Kiiro',
        enName: 'Dusty Yellow',
        image: 'assets/images/colors/color_dusty_yellow.png'),
    NumberModel(
        jpName: 'Haiiro',
        enName: 'Grey',
        image: 'assets/images/colors/color_gray.png'),
    NumberModel(
        jpName: 'Midori',
        enName: 'Green',
        image: 'assets/images/colors/color_green.png'),
    NumberModel(
        jpName: 'Aka',
        enName: 'Red',
        image: 'assets/images/colors/color_red.png'),
    NumberModel(
        jpName: 'Shiro',
        enName: 'White',
        image: 'assets/images/colors/color_white.png'),
    NumberModel(
        jpName: 'Kiiro',
        enName: 'Yellow',
        image: 'assets/images/colors/color_yellow.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.brown[800],
          title: Text(
            'Colors',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return NumbersPart(
              number: numbers[index],
              sectionColor: Colors.purple,
            );
          },
        ));
  }
}
