import 'package:flutter/material.dart';
import 'dart:math';

class HitungPiramida extends StatefulWidget {
  @override
  _HitungPiramidaState createState() => _HitungPiramidaState();
}

class _HitungPiramidaState extends State<HitungPiramida> {
  final _sisiController = TextEditingController();
  final _tinggiController = TextEditingController();

  double? _volume;
  double? _keliling;

  void _hitung() {
    double sisi = double.tryParse(_sisiController.text) ?? 0;
    double tinggi = double.tryParse(_tinggiController.text) ?? 0;

    double volume = (1 / 3) * pow(sisi, 2) * tinggi;
    double sisiMiring = sqrt(pow(sisi / 2, 2) + pow(tinggi, 2));
    double keliling = 4 * sisi + 4 * sisiMiring;

    setState(() {
      _volume = volume;
      _keliling = keliling;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Piramida'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _sisiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Sisi alas (cm)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _tinggiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Tinggi piramida (cm)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _hitung,
              child: Text('Hitung'),
            ),
            SizedBox(height: 16),
            if (_volume != null && _keliling != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Volume: ${_volume!.toStringAsFixed(2)} cm³', style: TextStyle(fontSize: 18)),
                  Text('Keliling: ${_keliling!.toStringAsFixed(2)} cm', style: TextStyle(fontSize: 18)),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
