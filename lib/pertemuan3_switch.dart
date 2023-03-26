import 'package:flutter/material.dart';

class LatihanKondisional extends StatefulWidget {
  const LatihanKondisional({super.key});

  @override
  State<LatihanKondisional> createState() => _LatihanKondisionalState();
}

class _LatihanKondisionalState extends State<LatihanKondisional> {
  TextEditingController conKodeBarang = TextEditingController();
  TextEditingController conJumlahBarang = TextEditingController();
  TextEditingController conCaraBeli = TextEditingController();

  String namaBarang = '';
  double hargaBarang = 0, totalHarga = 0, diskon = 0, totalBayar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Praktikum 3 Switch')),
      body: Container(
        margin: const EdgeInsets.only(top: 16, left: 12, right: 12),
        child: Wrap(
          runSpacing: 10,
          children: [
            TextField(
              decoration: const InputDecoration(
                label: Text('Kode Barang'),
                border: OutlineInputBorder(),
              ),
              controller: conKodeBarang,
            ),
            TextField(
              decoration: const InputDecoration(
                label: Text('Jumlah Barang'),
                border: OutlineInputBorder(),
              ),
              controller: conJumlahBarang,
            ),
            TextField(
              decoration: const InputDecoration(
                label: Text('Cara Beli'),
                border: OutlineInputBorder(),
              ),
              controller: conCaraBeli,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        try {
                          switch (conKodeBarang.text.toUpperCase()) {
                            case 'SPT':
                              namaBarang = 'Sepatu';
                              hargaBarang = 200000;
                              break;
                            case 'SND':
                              namaBarang = 'Sandal';
                              hargaBarang = 100000;
                              break;
                            case 'TST':
                              namaBarang = 'T-Shirt';
                              hargaBarang = 250000;
                              break;
                            case 'TOP':
                              namaBarang = 'Topi Cowbot';
                              hargaBarang = 50000;
                              break;
                            default:
                              namaBarang = '-';
                              hargaBarang = 0;
                              break;
                          }

                          totalHarga =
                              hargaBarang * double.parse(conJumlahBarang.text);

                          if (conCaraBeli.text.toUpperCase() == 'T') {
                            diskon = 10 / 100 * totalHarga;
                          } else {
                            diskon = 0;
                          }

                          totalBayar = totalHarga - diskon;
                        } catch (e) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text(
                              'Masukkan inputan terlebih dahulu',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ),
                            backgroundColor: Colors.yellow,
                          ));
                        }
                      });
                    },
                    child: const Text('PROSES'),
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        conKodeBarang.text = '';
                        conJumlahBarang.text = '';
                        conCaraBeli.text = '';
                        namaBarang = '';
                        hargaBarang = 0;
                        diskon = 0;
                        totalBayar = 0;
                      });
                    },
                    child: const Text('KOSONGKAN'),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama Barang : $namaBarang',
                ),
                Text(
                  'Harga Barang : $hargaBarang',
                ),
                Text(
                  'Total Harga : $totalHarga',
                ),
                Text(
                  'Diskon : $diskon',
                ),
                Text(
                  'Total Bayar : $totalBayar',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
