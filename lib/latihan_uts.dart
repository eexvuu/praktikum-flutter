import 'package:flutter/material.dart';

class LatihanUTS extends StatefulWidget {
  const LatihanUTS({super.key});

  @override
  State<LatihanUTS> createState() => _LatihanUTSState();
}

class _LatihanUTSState extends State<LatihanUTS> {
  List<TextEditingController> listController = [TextEditingController()];
  TextEditingController hasil = TextEditingController();

  void operasiHitung({required String jenisOperasi}) {
    List<double> numbers =
        listController.map((e) => double.tryParse(e.text) ?? 0.0).toList();

    double result = 0;

    if (jenisOperasi == 'sum') {
      result = numbers.reduce((value, element) => value + element);
    }

    hasil.text = result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UTS'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: TextField(
                  enabled: false,
                  decoration: const InputDecoration(
                    label: Text('Hasil'),
                    border: OutlineInputBorder(),
                  ),
                  controller: hasil,
                ),
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      operasiHitung(jenisOperasi: 'sum');
                    },
                    child: const Text('Total'),
                  ),
                ),
              ),
              ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listController.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: listController[index],
                              decoration: InputDecoration(
                                label: Text('Bilangan ${index + 1}'),
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              listController[index].clear();
                              listController[index].dispose();
                              listController.removeAt(index);
                            });
                          },
                          child: const Icon(
                            Icons.delete,
                            color: Color(0xFF6B74D6),
                            size: 35,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        listController.add(TextEditingController());
                      });
                    },
                    child: const Text('Add More'),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
