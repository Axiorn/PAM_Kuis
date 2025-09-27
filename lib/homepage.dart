import 'package:flutter/material.dart';
import 'hitung_piramida.dart';
import 'konversi_waktu.dart';
import 'cek_hari.dart';
import 'profile_user.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomeMenu(),
    ProfileUser(),
  ];
  final List<String> _titles = [
    'Kuis PAM',
    'Profile',
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(_titles[_selectedIndex]),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
            child: Text('Hitung Piramida', style: TextStyle(fontSize: 18)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HitungPiramida()),
              );
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
            child: Text('Konversi Waktu', style: TextStyle(fontSize: 18)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KonversiWaktu()),
              );
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
            child: Text('Cek Hari', style: TextStyle(fontSize: 18)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CekHari()),
              );
            },
          ),
        ],
      ),
    );
  }
}
