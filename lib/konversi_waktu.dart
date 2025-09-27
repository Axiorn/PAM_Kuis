import 'package:flutter/material.dart';

class KonversiWaktu extends StatefulWidget {
  @override
  _KonversiWaktuState createState() => _KonversiWaktuState();
}

class _KonversiWaktuState extends State<KonversiWaktu> {
  final _waktuController = TextEditingController();
  String? _hasil;

  void _konversi() {
    String input = _waktuController.text.trim();

    if (!input.contains(':') || input.split(':').length != 2) {
      setState(() {
        _hasil = 'Format salah! Gunakan HH:MM';
      });
      return;
    }

    List<String> parts = input.split(':');
    int? jam = int.tryParse(parts[0]);
    int? menit = int.tryParse(parts[1]);

    if (jam == null || menit == null || jam < 0 || jam > 23 || menit < 0 || menit > 59) {
      setState(() {
        _hasil = 'Jam atau menit tidak valid! Masukkan HH:MM (0–23 : 0–59)';
      });
      return;
    }

    int wibJam = jam;
    int witaJam = (jam + 1) % 24;
    int witJam = (jam + 2) % 24;

    setState(() {
      _hasil =
          'WIB: ${wibJam.toString().padLeft(2, '0')}:${menit.toString().padLeft(2, '0')}\n'
          'WITA: ${witaJam.toString().padLeft(2, '0')}:${menit.toString().padLeft(2, '0')}\n'
          'WIT: ${witJam.toString().padLeft(2, '0')}:${menit.toString().padLeft(2, '0')}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konversi Waktu'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _waktuController,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: 'Masukkan waktu (HH:MM)',
                border: OutlineInputBorder(),
                hintText: 'Contoh: 23:18',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _konversi,
              child: Text('Konversi'),
            ),
            SizedBox(height: 16),
            if (_hasil != null)
              Text(
                _hasil!,
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
