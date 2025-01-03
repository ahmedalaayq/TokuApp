import 'package:flutter/material.dart';
import 'package:toku_app/model/number_model.dart';

class NumbersPart extends StatelessWidget {
  const NumbersPart({
    super.key,
    required this.number, required this.sectionColor,
  });

  final NumberModel number;
  final Color sectionColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      color: sectionColor,
      child: Row(
        children: [
          Container(color: Colors.amber[50], child: Image.asset(number.image)),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
