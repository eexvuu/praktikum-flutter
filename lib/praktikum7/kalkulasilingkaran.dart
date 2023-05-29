import 'package:flutter/material.dart';

class KalkulasiLingkaran extends StatefulWidget {
  const KalkulasiLingkaran({super.key});

  @override
  State<KalkulasiLingkaran> createState() => _KalkulasiLingkaranState();
}

class _KalkulasiLingkaranState extends State<KalkulasiLingkaran> {
  TextEditingController jarijari = TextEditingController();
  TextEditingController tinggi = TextEditingController();
  TextEditingController luas = TextEditingController();
  TextEditingController keliling = TextEditingController();
  TextEditingController luaspermukaan = TextEditingController();
  TextEditingController luasselimut = TextEditingController();
  TextEditingController isi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OOP Kalkulasi Lingkaran')),
      body: Container(
        margin: const EdgeInsets.only(top: 16, left: 4, right: 4),
        child: Wrap(
          runSpacing: 10,
          children: [
            //textfield Jari Jari
            TextField(
              decoration: const InputDecoration(
                label: Text('Jari Jari'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: jarijari,
            ),
            TextField(
              decoration: const InputDecoration(
                label: Text('Tinggi'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: tinggi,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Text('Hitung')),
                ),
              ],
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Luas Lingkaran'),
                border: OutlineInputBorder(),
              ),
              controller: luas,
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Keliling Lingkaran'),
                border: OutlineInputBorder(),
              ),
              controller: keliling,
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Luas Permukaan Tabung'),
                border: OutlineInputBorder(),
              ),
              controller: luaspermukaan,
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Luas Selimut Tabung'),
                border: OutlineInputBorder(),
              ),
              controller: luasselimut,
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Isi Tabung'),
                border: OutlineInputBorder(),
              ),
              controller: isi,
            ),
          ],
        ),
      ),
    );
  }
}