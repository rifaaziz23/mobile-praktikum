import 'package:flutter/material.dart';
import 'package:pertemuan5/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'nama': 'Laptop ROG',
        'harga': '7000',
        'image': 'https://th.bing.com/th/id/OIP.XHwvuYWGgGrV80ENLbBtrQHaFK?w=239&h=180&c=7&r=0&o=7&pid=1.7&rm=3',
      },
      {
        'nama': 'Laptop Mac Book',
        'harga': '10000',
        'image': 'data:image/webp;base64,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',
      },
      {
        'nama': 'RTX 5090',
        'harga': '5000',
        'image': 'https://th.bing.com/th/id/OIP.xlB0vfMAG0_db-y2G3509QHaHa?w=163&h=180&c=7&r=0&o=7&pid=1.7&rm=3',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Produk Alat Elektronik',
          style: TextStyle(fontWeight: .bold, letterSpacing: 1.2),
        ),
        centerTitle: true,
        foregroundColor: Colors.pink,
        leading: Icon(Icons.shopping_cart),
      ),

      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(product['image']),
            title: Text(product['nama']),
            subtitle: Text('\$${product['harga']}'),
            trailing: Icon(Icons.arrow_right, size: 25),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    nama: product['nama'],
                    harga: product['harga'],
                    image: product['image'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
