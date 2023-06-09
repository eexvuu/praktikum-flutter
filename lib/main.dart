import 'package:flutter/material.dart';
import 'package:test_app/pertemuan8.dart';
import 'package:test_app/widgets/button_home.dart';
import 'pertemuan1.dart';
import 'pertemuan2.dart';
import 'pertemuan3_switch.dart';
import 'pertemuan3_loop.dart';
import 'pertemuan2_update.dart';
import 'pertemuan4/buttom_navigasi.dart';
import 'pertemuan5.dart';
import 'latihan_uts.dart';
import 'praktikum7/pertemuan7.dart';
import 'test.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const DashboardPraktikum(),
    );
  }
}

class DashboardPraktikum extends StatelessWidget {
  const DashboardPraktikum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Praktikum'),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  HomeButton(
                    lokasi: HomePage(),
                    deskripsi: 'TextField + SnackBar',
                    judul: 'Praktikum 1',
                  ),
                  HomeButton(
                    lokasi: OperatorAritmatika(),
                    deskripsi: 'Function ElevatedButton Operasi Aritmatika',
                    judul: 'Praktikum 2',
                  ),
                  HomeButton(
                    lokasi: OperatorAritmatikaUpdate(),
                    deskripsi:
                        'Update code praktikum 2 menggunakan named parameter ',
                    judul: 'Praktikum 2',
                  ),
                  HomeButton(
                    lokasi: LatihanKondisional(),
                    deskripsi: 'Latihan pengkondisian switch',
                    judul: 'Praktikum 3',
                  ),
                  HomeButton(
                    lokasi: LatihanLooping(),
                    deskripsi: 'Latihan Looping',
                    judul: 'Praktikum 3',
                  ),
                  HomeButton(
                    lokasi: ButtomNavigasiBar(),
                    deskripsi: 'Praktikum Bottom navigasi bar',
                    judul: 'Praktikum 4',
                  ),
                  HomeButton(
                    lokasi: OperasiHitung(),
                    deskripsi: 'Praktikum Operasi hitung',
                    judul: 'Praktikum 6',
                  ),
                  HomeButton(
                    lokasi: LatihanSoal(),
                    deskripsi: 'Latihan',
                    judul: 'test',
                  ),
                  HomeButton(
                    lokasi: LatihanUTS(),
                    deskripsi: 'Latihan Soal UTS',
                    judul: 'Latihan UTS',
                  ),
                  HomeButton(
                    lokasi: KalkulasiLingkaran(),
                    deskripsi: 'Praktik Class',
                    judul: 'Praktikum 7',
                  ),
                  HomeButton(
                    lokasi: WidgetLanjutan(),
                    deskripsi: 'Praktik Widget Lanjutan',
                    judul: 'Praktikum 8',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
