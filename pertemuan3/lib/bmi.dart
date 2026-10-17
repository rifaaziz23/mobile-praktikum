import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  final bbcontroller = TextEditingController();
  final tbcontroller = TextEditingController();

  double? _bmiResult;
  String _keterangan = "Silahkan Masukan data anda";

  void _hitung() {
    final double bb = double.tryParse(bbcontroller.text) ?? 0;
    final double tb = double.tryParse(tbcontroller.text) ?? 0;

    setState(() {
      if (bb > 0 && tb > 0) {
        double tbM = tb / 100;
        double bmi = bb / (tbM * tbM);

        _bmiResult = bmi;

        if (bmi < 18.5) {
          _keterangan = "Kurang";
        } else if (bmi < 25) {
          _keterangan = "Ideal";
        } else if (bmi < 30) {
          _keterangan = "Kelebihan";
        } else {
          _keterangan = "Obesitas";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.calculate),
        title: Text('Kalkulator BMI'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                controller: bbcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  icon: Icon(Icons.monitor_weight),
                  labelText: 'Berat Badan (kg)',
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),
              SizedBox(height: 10),
              TextField(
                controller: tbcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  icon: Icon(Icons.height),
                  labelText: 'Tinggi Badan (cm)',
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _hitung,
                child: Text(
                  'Hitung',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: BoxBorder.all(width: 2, color: Colors.blue),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_bmiResult?.toStringAsFixed(2) ?? "--", style: TextStyle(fontSize: 40)),
                    SizedBox(width: 10),
                    Text(_keterangan),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
