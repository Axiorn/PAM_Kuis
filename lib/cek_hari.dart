import 'package:flutter/material.dart';

class CekHari extends StatefulWidget {
  @override
  _CekHariState createState() => _CekHariState();
}

class _CekHariState extends State<CekHari> {
  final _nomorController = TextEditingController();
  String? _hasil;

  void _cekHari() {
    int? nomor = int.tryParse(_nomorController.text.trim());

    if (nomor == null) {
      setState(() {
        _hasil = 'Input tidak valid! Masukkan angka 1–7';
      });
      return;
    }

    String hari;
    switch (nomor) {
      case 1:
        hari = 'Senin';
        break;
      case 2:
        hari = 'Selasa';
        break;
      case 3:
        hari = 'Rabu';
        break;
      case 4:
        hari = 'Kamis';
        break;
      case 5:
        hari = 'Jumat';
        break;
      case 6:
        hari = 'Sabtu';
        break;
      case 7:
        hari = 'Minggu';
        break;
      default:
        hari = 'Nomor tidak valid! Masukkan 1–7';
    }

    setState(() {
      _hasil = hari;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cek Hari'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nomorController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan nomor hari (1–7)',
                border: OutlineInputBorder(),
                hintText: 'Contoh: 1 = Senin',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _cekHari,
              child: Text('Cek Hari'),
            ),
            SizedBox(height: 16),
            if (_hasil != null)
              Text(
                _hasil!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
