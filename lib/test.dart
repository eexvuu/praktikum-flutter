import 'package:flutter/material.dart';

class LatihanSoal extends StatefulWidget {
  const LatihanSoal({super.key});

  @override
  State<LatihanSoal> createState() => _LatihanSoalState();
}

class _LatihanSoalState extends State<LatihanSoal> {
  final List<TextEditingController> _controllers = List.generate(
    5,
    (_) => TextEditingController(),
  );
  final TextEditingController _hasilController = TextEditingController();

  void _hitung(String jenisOperasi) {
    final List<double> bilangan = _controllers
        .map((controller) => double.tryParse(controller.text) ?? 0)
        .toList();
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

    _hasilController.text = hasil.toString();
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
            for (int i = 0; i < _controllers.length; i++)
              TextField(
                decoration: InputDecoration(
                  label: Text('Bilangan ${i + 1}'),
                  border: const OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                controller: _controllers[i],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (final jenisOperasi in ['avg', 'sum', 'min', 'max'])
                  SizedBox(
                    width: 85,
                    child: ElevatedButton(
                      onPressed: () => _hitung(jenisOperasi),
                      child: Text(
                        jenisOperasi == 'avg'
                            ? 'Rata'
                            : jenisOperasi == 'sum'
                                ? 'Total'
                                : jenisOperasi == 'min'
                                    ? 'Kecil'
                                    : 'Besar',
                      ),
                    ),
                  ),
              ],
            ),
            TextField(
              enabled: false,
              decoration: const InputDecoration(
                label: Text('Hasil'),
                border: OutlineInputBorder(),
              ),
              controller: _hasilController,
            ),
          ],
        ),
      ),
    );
  }
}
