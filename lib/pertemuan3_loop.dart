import 'package:flutter/material.dart';

class LatihanLooping extends StatefulWidget {
  const LatihanLooping({super.key});

  @override
  State<LatihanLooping> createState() => _LatihanLoopingState();
}

class _LatihanLoopingState extends State<LatihanLooping> {
  List hasilProses = [];
  List warna = [
    'Kuning',
    'Hijau',
    'Biru',
    'Ungu',
    'Abu-abu',
    'Merah',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Praktikum 3 Looping')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 80,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          hasilProses.clear();
                          for (var i = 0; i <= 100; i += 5) {
                            hasilProses.add(i);
                          }
                        });
                      },
                      child: const Text('For')),
                ),
                SizedBox(
                  width: 80,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          int bil = 1;

                          hasilProses.clear();

                          while (bil < 10) {
                            hasilProses.add(bil);
                            bil++;
                          }
                        });
                      },
                      child: const Text('While')),
                ),
                SizedBox(
                  width: 80,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          int bil = 5;

                          hasilProses.clear();

                          do {
                            hasilProses.add(bil);
                            bil++;
                          } while (bil < 10);
                        });
                      },
                      child: const Text('Do While')),
                ),
                SizedBox(
                  width: 80,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          hasilProses.clear();
                          for (var element in warna) {
                            if (element.toString().contains('a')) {
                              hasilProses.add(element);
                            }
                          }
                        });
                      },
                      child: const Text('For In')),
                ),
              ],
            ),
            Text(hasilProses.toString()),
          ],
        ),
      ),
    );
  }
}
