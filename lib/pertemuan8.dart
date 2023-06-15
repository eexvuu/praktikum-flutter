import 'package:flutter/material.dart';

String jenisKelaminDipilih = '';
String statusPernikahanDipilih = '';

bool chKIndonesia = false;
bool chKInggris = false;
bool chKArab = false;
bool chKMandarin = false;

List<String> agama = <String>[
  'Islam',
  'Katolik',
  'Protestan',
  'Hindu',
  'Budha'
];

class WidgetLanjutan extends StatefulWidget {
  const WidgetLanjutan({super.key});

  @override
  State<WidgetLanjutan> createState() => _WidgetLanjutanState();
}

class _WidgetLanjutanState extends State<WidgetLanjutan> {
  String dropdownValue = agama.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Latihan Widget Lanjutan',
          ),
        ),
        body: ListView(
          children: [
            Image.network(
                'https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2022/01/add-image-in-flutter-hero.png?resize=950%2C500&ssl=1'),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2022/01/add-image-in-flutter-hero.png?resize=950%2C500&ssl=1'),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Jenis Kelamin'),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                title: const Text('Pria'),
                                value: 'Pria',
                                groupValue: jenisKelaminDipilih,
                                onChanged: (String? jenis) {
                                  setState(() {
                                    jenisKelaminDipilih = jenis!;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                title: const Text('Wanita'),
                                value: 'Wanita',
                                groupValue: jenisKelaminDipilih,
                                onChanged: (String? jenis) {
                                  setState(() {
                                    jenisKelaminDipilih = jenis!;
                                  });
                                },
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Status Perkawinan'),
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                title: const Text('Kawin'),
                                value: 'Kawin',
                                groupValue: statusPernikahanDipilih,
                                onChanged: (String? statusPernikahan) {
                                  setState(() {
                                    statusPernikahanDipilih = statusPernikahan!;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                title: const Text('Tidak Kawin'),
                                value: 'Tidak Kawin',
                                groupValue: statusPernikahanDipilih,
                                onChanged: (String? statusPernikahan) {
                                  setState(() {
                                    statusPernikahanDipilih = statusPernikahan!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Kemampuan Berbahasa'),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: chKIndonesia,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            chKIndonesia = value!;
                                          });
                                        },
                                      ),
                                      const Text('Indonesia'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: chKInggris,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            chKInggris = value!;
                                          });
                                        },
                                      ),
                                      const Text('Inggris'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: chKArab,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            chKArab = value!;
                                          });
                                        },
                                      ),
                                      const Text('Arab'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        value: chKMandarin,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            chKMandarin = value!;
                                          });
                                        },
                                      ),
                                      const Text('Mandarin'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Agama'),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                        ),
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          underline: Container(
                            height: 2,
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: agama
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Submit'),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
