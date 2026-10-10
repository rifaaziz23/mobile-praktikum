import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertemuan 1 Euy'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          Text("Halo Nama saya Rifa", style: TextStyle(fontSize: 32)),
          Text("Umur Saya 20 + 1 tahun"),
        ],
      ),
    );
  }
}
