import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:toku_app/model/number_model.dart';
import 'package:toku_app/widgets/numbers_part.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<NumberModel> numbers = const [
    NumberModel(
        jpName: 'ichi',
        enName: 'one',
        image: 'assets/images/numbers/number_one.png'),
    NumberModel(
        jpName: 'Ni',
        enName: 'two',
        image: 'assets/images/numbers/number_two.png'),
    NumberModel(
        jpName: 'San',
        enName: 'three',
        image: 'assets/images/numbers/number_three.png'),
    NumberModel(
        jpName: 'Shi ',
        enName: 'four',
        image: 'assets/images/numbers/number_four.png'),
    NumberModel(
        jpName: 'Go',
        enName: 'five',
        image: 'assets/images/numbers/number_five.png'),
    NumberModel(
        jpName: 'Roku',
        enName: 'six',
        image: 'assets/images/numbers/number_six.png'),
    NumberModel(
        jpName: 'Shichi',
        enName: 'seven',
        image: 'assets/images/numbers/number_seven.png'),
    NumberModel(
        jpName: 'Hachi',
        enName: 'eight',
        image: 'assets/images/numbers/number_eight.png'),
    NumberModel(
        jpName: 'Kyuu ',
        enName: 'nine',
        image: 'assets/images/numbers/number_nine.png'),
    NumberModel(
        jpName: 'Juu',
        enName: 'ten',
        image: 'assets/images/numbers/number_ten.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.brown[800],
          title: Text(
            'Numbers',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return NumbersPart(number: numbers[index],sectionColor: Colors.orange,);
          },
        ));
  }
}
