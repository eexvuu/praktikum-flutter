import 'package:flutter/material.dart';

class OperatorAritmatika extends StatefulWidget {
  const OperatorAritmatika({super.key});

  @override
  State<OperatorAritmatika> createState() => _OperatorAritmatikaState();
}

class _OperatorAritmatikaState extends State<OperatorAritmatika> {
  TextEditingController bilangan1 = TextEditingController();
  TextEditingController bilangan2 = TextEditingController();
  TextEditingController hasil = TextEditingController();
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
              controller: hasil,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      try {
                        double valueBilangan1 = double.parse(bilangan1.text);
                        double valueBilangan2 = double.parse(bilangan2.text);

                        double valueHasil = valueBilangan1 + valueBilangan2;

                        hasil.text = valueHasil.toString();
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            'Inputan tidak valid. error Type: ${e.toString()}',
                            style: const TextStyle(
                                fontSize: 20.0, color: Colors.black),
                          ),
                          backgroundColor: Colors.red,
                        ));
                      }
                    },
                    child: const Text('Tambah'),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      try {
                        double valueBilangan1 = double.parse(bilangan1.text);
                        double valueBilangan2 = double.parse(bilangan2.text);

                        double valueHasil = valueBilangan1 - valueBilangan2;

                        hasil.text = valueHasil.toString();
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            'Inputan tidak valid. error Type: ${e.toString()}',
                            style: const TextStyle(
                                fontSize: 20.0, color: Colors.black),
                          ),
                          backgroundColor: Colors.red,
                        ));
                      }
                    },
                    child: const Text('Kurang'),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      try {
                        double valueBilangan1 = double.parse(bilangan1.text);
                        double valueBilangan2 = double.parse(bilangan2.text);

                        double valueHasil = valueBilangan1 * valueBilangan2;

                        hasil.text = valueHasil.toString();
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            'Inputan tidak valid. error Type: ${e.toString()}',
                            style: const TextStyle(
                                fontSize: 20.0, color: Colors.black),
                          ),
                          backgroundColor: Colors.red,
                        ));
                      }
                    },
                    child: const Text('Kali'),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      try {
                        double valueBilangan1 = double.parse(bilangan1.text);
                        double valueBilangan2 = double.parse(bilangan2.text);

                        double valueHasil = valueBilangan1 / valueBilangan2;

                        hasil.text = valueHasil.toString();
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            'Inputan tidak valid. error Type: ${e.toString()}',
                            style: const TextStyle(
                                fontSize: 20.0, color: Colors.black),
                          ),
                          backgroundColor: Colors.red,
                        ));
                      }
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
