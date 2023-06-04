import 'package:flutter/material.dart';
import 'lingkaran.dart';
import 'silinder.dart';

class KalkulasiLingkaran extends StatefulWidget {
  const KalkulasiLingkaran({super.key});

  @override
  State<KalkulasiLingkaran> createState() => _KalkulasiLingkaranState();
}

class _KalkulasiLingkaranState extends State<KalkulasiLingkaran> {
  TextEditingController jariJariController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();
  TextEditingController luasLingkaranController = TextEditingController();
  TextEditingController kelilingLingkaranController = TextEditingController();
  TextEditingController luasSatuTutupController = TextEditingController();
  TextEditingController luasPermukaanLingkaranController =
      TextEditingController();
  TextEditingController luasSelimutTabungController = TextEditingController();
  TextEditingController isiTabungController = TextEditingController();

  void hitung() {
    double jari = double.tryParse(jariJariController.text) ?? 0.0;
    double tinggi = double.tryParse(tinggiController.text) ?? 0.0;

    Lingkaran lingkaran = Lingkaran(jari);
    Silinder silinder = Silinder(tinggi, jari);

    luasLingkaranController.text = lingkaran.luasLingkaran().toString();
    kelilingLingkaranController.text = lingkaran.kelilingLingkaran().toString();
    luasSatuTutupController.text = silinder.luasLingkaran().toString();
    luasPermukaanLingkaranController.text =
        silinder.luasPermukaanTabung().toString();
    luasSelimutTabungController.text = silinder.luasSelimuttabung().toString();
    isiTabungController.text = silinder.isiTabung().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OOP Operasi Hitung Lingkaran')),
      body: Container(
        margin: const EdgeInsets.only(top: 16, left: 12, right: 12),
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
              controller: jariJariController,
            ),
            TextField(
              decoration: const InputDecoration(
                label: Text('Tinggi'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: tinggiController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        hitung();
                      },
                      child: const Text('Hitung')),
                ),
              ],
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Luas Lingkaran'),
                border: OutlineInputBorder(),
              ),
              controller: luasLingkaranController,
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Keliling Lingkaran'),
                border: OutlineInputBorder(),
              ),
              controller: kelilingLingkaranController,
            ),

            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Luas Satu Tutup Tabung'),
                border: OutlineInputBorder(),
              ),
              controller: luasSatuTutupController,
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Luas Permukaan Tabung'),
                border: OutlineInputBorder(),
              ),
              controller: luasPermukaanLingkaranController,
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Luas Selimut Tabung'),
                border: OutlineInputBorder(),
              ),
              controller: luasSelimutTabungController,
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Isi Tabung'),
                border: OutlineInputBorder(),
              ),
              controller: isiTabungController,
            ),
          ],
        ),
      ),
    );
  }
}
