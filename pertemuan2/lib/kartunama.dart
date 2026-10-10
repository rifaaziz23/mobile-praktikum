import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue[500],
                radius: 78.0,
                backgroundImage: AssetImage('assets/Rifa.jpg'),
              ),
              SizedBox(height: 10.0),
              Text(
                'Muhammad Rifa',
                style: TextStyle(fontSize: 20, color: Colors.pink[500]),
              ),
              Text(
                'Software Engineer | Informatics Engineering Student',
                style: GoogleFonts.abel(fontSize: 17, color: Colors.pink[500]),
              ),
              SizedBox(
                height: 20.0,
                width: 500.0,
                child: Divider(color: Colors.black),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.red[600]),
                  title: Text(
                    '+62 895 3261 43968',
                    style: TextStyle(color: Colors.red[600], fontSize: 18),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'rifamaulana243@gmail.com',
                    style: TextStyle(color: Colors.blue[600], fontSize: 18),
                  ),
                  trailing: Icon(Icons.email, color: Colors.blue[600]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
