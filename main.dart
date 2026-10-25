import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Tugas Stateless')),
        body: Column(
          children: [
            // 1. Profile (Row)
            Row(
              children: [
                const CircleAvatar(child: Icon(Icons.person)),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Zubat Anwar'),
                    Text('NIM: 3012410060'),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 16),

            // 2. Ikon Kontak (Container & Row)
            Container(
              color: Colors.brown.shade100,
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.email),
                  Icon(Icons.phone),
                  Icon(Icons.location_on),
                  Icon(Icons.school
                   ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // 3. Tiga Kartu Mahasiswa
            const KartuMahasiswa(nama: 'Reindra', nim: '301241001', prodi: 'Informatika'),
            const KartuMahasiswa(nama: 'Eric', nim: '301241002', prodi: 'Informatika'),
            const KartuMahasiswa(nama: 'Faaza', nim: '301241003', prodi: 'Informatika'),
          ],
        ),
      )
    );
  }
}

class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,

  });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('$nama - $nim ($prodi)'),
      ),
    );
  }
}

