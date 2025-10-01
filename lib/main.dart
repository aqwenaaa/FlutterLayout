import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SOAL 1: Column dibungkus Expanded + crossAxisAlignment.start
    final Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                // SOAL 2: Tambahkan Container padding bottom=8 dan warna abu-abi
                // Baris judul pertama diberi padding bawah 8
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Baris kedua berwarna abu-abu
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        // Tambahan Soal 3
        Icon(Icons.star, color: Colors.red),
        SizedBox(width: 4),
        Text('41'),        ], 
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Aqueena Regita Hapsari - 2341760096',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Layout Aqueena')),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
