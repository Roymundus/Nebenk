import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nebengk/Pages/HalamanHasilInput.dart';
import 'package:nebengk/Pages/penumpang.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xFF3668B2),
        title: Text("NeBengK"),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Implementasi tindakan ketika tombol pesan ditekan
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF3668B2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    // Tambahkan foto profil pengguna di sini
                    // Misalnya, jika foto profil tersedia di assets, Anda bisa menggunakan:
                    // backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nama Pengguna',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Email Pengguna',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Akun'),
              onTap: () {
                // Aksi yang ingin Anda lakukan ketika "Akun" diklik
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Pusat Bantuan'),
              onTap: () {
                // Aksi yang ingin Anda lakukan ketika "Pusat Bantuan" diklik
              },
            ),
            ListTile(
              leading: Icon(Icons.support),
              title: Text('Dukungan'),
              onTap: () {
                // Aksi yang ingin Anda lakukan ketika "Dukungan" diklik
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Aksi yang ingin Anda lakukan ketika "Logout" diklik
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ingin jadi apa anda hari ini?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BeriTumpangan()));
                // Aksi yang ingin Anda lakukan saat kotak motor ditekan
              },
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.motorcycle,
                      size: 50,
                      color: Colors.black,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Beri Tumpangan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Penumpang()));
                // Aksi yang ingin Anda lakukan saat kotak penumpang ditekan
              },
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.black,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Penumpang ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
