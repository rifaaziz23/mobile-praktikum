import 'package:flutter/material.dart';
import 'package:pertemuan3/bmi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator BMI',
      home: BMI(),
      debugShowCheckedModeBanner: false,
    );
  }
}
