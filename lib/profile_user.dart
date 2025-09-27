import 'package:flutter/material.dart';

class ProfileUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Foto profile
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/Latief.jpg'), // ganti sesuai file foto
            ),
            SizedBox(height: 16),
            // Nama
            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Latief Ghilfawan Defianto'),
                subtitle: Text('Nama'),
              ),
            ),
            // NIM
            Card(
              child: ListTile(
                leading: Icon(Icons.badge),
                title: Text('124230067'),
                subtitle: Text('NIM'),
              ),
            ),
            // Tempat & Tanggal Lahir
            Card(
              child: ListTile(
                leading: Icon(Icons.cake),
                title: Text('Bekasi, 5 Mei 2005'),
                subtitle: Text('Tempat & Tanggal Lahir'),
              ),
            ),
            // Hobi
            Card(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Mencoba hal baru'),
                subtitle: Text('Hobi'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
