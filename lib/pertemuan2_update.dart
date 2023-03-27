import 'package:flutter/material.dart';

class OperatorAritmatikaUpdate extends StatefulWidget {
  const OperatorAritmatikaUpdate({super.key});

  @override
  State<OperatorAritmatikaUpdate> createState() =>
      _OperatorAritmatikaUpdateState();
}

class _OperatorAritmatikaUpdateState extends State<OperatorAritmatikaUpdate> {
  TextEditingController bilangan1 = TextEditingController();
  TextEditingController bilangan2 = TextEditingController();
  TextEditingController conHasil = TextEditingController();

  void operasiAritmatika(String jenisOperasi) {
    double bil1 = double.parse(bilangan1.text);
    double bil2 = double.parse(bilangan2.text);
    double hasil = 0;

    if (jenisOperasi == "+") {
      hasil = bil1 + bil2;
    } else if (jenisOperasi == "-") {
      hasil = bil1 - bil2;
    } else if (jenisOperasi == "*") {
      hasil = bil1 * bil2;
    } else if (jenisOperasi == "/") {
      hasil = bil1 / bil2;
    }

    conHasil.text = hasil.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Praktikum 2')),
      body: Container(
        margin: const EdgeInsets.only(top: 16, left: 12, right: 12),
        child: Wrap(
          runSpacing: 10,
          children: [
            TextField(
              decoration: const InputDecoration(
                label: Text('Bilangan 1'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: bilangan1,
            ),
            TextField(
              decoration: const InputDecoration(
                label: Text('Bilangan 2'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: bilangan2,
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Hasil'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: conHasil,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      operasiAritmatika('+');
                    },
                    child: const Text('Tambah'),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      operasiAritmatika('-');
                    },
                    child: const Text('Kurang'),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      operasiAritmatika('*');
                    },
                    child: const Text('Kali'),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      operasiAritmatika('/');
                    },
                    child: const Text('Bagi'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
