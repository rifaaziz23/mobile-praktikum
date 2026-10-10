import 'package:flutter/material.dart';
import 'package:pertemuan1/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belum ada judul',
      home: HomePage(), // ini homepage
    );
  }
}
