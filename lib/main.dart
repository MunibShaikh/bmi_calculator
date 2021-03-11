import 'package:flutter/material.dart';
import 'inputs_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF2a0d30),
        scaffoldBackgroundColor: Color(0xFF2a0d30),
      ),
    );
  }
}
