import 'package:flutter/material.dart';
// buatlah aplikasi untuk menghitung total, rata-rata, terbesar, terkecil menggunakan function dengan named parameter gunakan array / list untuk membuat program lebih terstruktur dan pendek jika ada function yang bisa digunakan di function lain menggunakan function tersebut agar program menjadi lebih pendek dan terstruktur jalankan di perangkat fisik android.

class OperasiHitung extends StatefulWidget {
  const OperasiHitung({super.key});

  @override
  State<OperasiHitung> createState() => _OperasiHitungState();
}

class _OperasiHitungState extends State<OperasiHitung> {
  TextEditingController bilangan1 = TextEditingController();
  TextEditingController bilangan2 = TextEditingController();
  TextEditingController bilangan3 = TextEditingController();
  TextEditingController bilangan4 = TextEditingController();
  TextEditingController bilangan5 = TextEditingController();
  TextEditingController conHasil = TextEditingController();

  void operasiHitung({required String jenisOperasi}) {
    List<TextEditingController> controllers = [
      bilangan1,
      bilangan2,
      bilangan3,
      bilangan4,
      bilangan5
    ];
    List<double> bilangan =
        controllers.map((controller) => double.parse(controller.text)).toList();
    double hasil = 0;

    if (jenisOperasi == 'sum') {
      hasil = bilangan.reduce((curr, next) => curr + next);
    } else if (jenisOperasi == 'avg') {
      hasil = bilangan.reduce((curr, next) => curr + next) / bilangan.length;
    } else if (jenisOperasi == 'min') {
      hasil = bilangan.reduce((curr, next) => curr < next ? curr : next);
    } else if (jenisOperasi == 'max') {
      hasil = bilangan.reduce((curr, next) => curr > next ? curr : next);
    }

    conHasil.text = hasil.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan')),
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 12, right: 12),
        child: Wrap(
          runSpacing: 16,
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
              decoration: const InputDecoration(
                label: Text('Bilangan 3'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: bilangan3,
            ),
            TextField(
              decoration: const InputDecoration(
                label: Text('Bilangan 4'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: bilangan4,
            ),
            TextField(
              decoration: const InputDecoration(
                label: Text('Bilangan 5'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: bilangan5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                      onPressed: () {
                        operasiHitung(jenisOperasi: 'avg');
                      },
                      child: const Text('Rata')),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                      onPressed: () {
                        operasiHitung(jenisOperasi: 'sum');
                      },
                      child: const Text('Total')),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                      onPressed: () {
                        operasiHitung(jenisOperasi: 'min');
                      },
                      child: const Text('Kecil')),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                      onPressed: () {
                        operasiHitung(jenisOperasi: 'max');
                      },
                      child: const Text('Besar')),
                ),
              ],
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Hasil'),
                border: OutlineInputBorder(),
              ),
              controller: conHasil,
            ),
          ],
        ),
      ),
    );
  }
}
