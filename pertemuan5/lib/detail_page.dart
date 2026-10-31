import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String nama, harga, image;

  const DetailPage({
    super.key,
    required this.nama,
    required this.harga,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(image),
            Text(nama, style: TextStyle(fontSize: 35, fontWeight: .bold),),
            Text('\$${harga}', style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
