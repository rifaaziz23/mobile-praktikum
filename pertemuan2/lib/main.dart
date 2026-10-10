import 'package:flutter/material.dart';
import 'package:pertemuan2/kartunama.dart';


void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kartu Nama Digital',
      home: BusinessCardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}