import 'package:flutter/material.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsHomePage(),
    );
  }
}

class NewsHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Tambahkan fungsi yang akan dijalankan ketika profil pengguna diklik
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2, // Ganti dengan jumlah berita yang ingin ditampilkan
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Berita ${index + 1}'),
                  subtitle: Text('Jose Mourinho tercatat sebagai salah satu pelatih tersukses sepanjang masa. Selama menjadi pelatih, Mourinho kerap mendatangkan pemain dengan harga tinggi.${index + 1}'),
                  onTap: () {
                    // Tambahkan fungsi yang akan dijalankan ketika berita di klik
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsDetailPage(
                          title: 'Berita Bola ${index + 1}',
                          description: 'Persija Jakarta berhasil mengalahkan TIRA Persikabo pada pertandingan uji coba di Lapangan PSNN, Depok, Selasa 15/9, pekan ini. Riko Simanjutak disebut menjadi pahlawan kemenangan Macan Kemayoran lewat satu gol yang dicetaknya ${index + 1}',
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(16),
            child: Center(
              child: Text(
                'Tentang Aplikasi Berita',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan fungsi yang akan dijalankan ketika tombol floating action button diklik
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: AssetImage('assets/pp.jpg'), // Menggunakan foto profil 'pp.jpg'
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rezza Fauzi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'rezza@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Beranda'),
              onTap: () {
                // Tambahkan fungsi yang akan dijalankan ketika menu beranda di klik
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
              onTap: () {
                // Tambahkan fungsi yang akan dijalankan ketika menu profil di klik
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
              onTap: () {
                // Tambahkan fungsi yang akan dijalankan ketikamenu pengaturan di klik
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewsDetailPage extends StatelessWidget {
  final String title;
  final String description;

  NewsDetailPage({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Berita'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
