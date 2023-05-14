import 'package:flutter/material.dart';
import 'pertemuan1.dart';
import 'pertemuan2.dart';
import 'pertemuan3_switch.dart';
import 'pertemuan3_loop.dart';
import 'pertemuan2_update.dart';
import 'pertemuan4/buttom_navigasi.dart';
import 'pertemuan5.dart';
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
        primarySwatch: Colors.purple,
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
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                  child: const Text('Praktikum 1'),
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const OperatorAritmatika();
                    }));
                  },
                  child: const Text('Praktikum 2'),
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const OperatorAritmatikaUpdate();
                    }));
                  },
                  child: const Text('Praktikum 2 Update'),
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LatihanKondisional();
                    }));
                  },
                  child: const Text('Praktikum 3 Switch'),
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LatihanLooping();
                    }));
                  },
                  child: const Text('Praktikum 3 Loop'),
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ButtomNavigasiBar();
                    }));
                  },
                  child: const Text('Praktikum 4'),
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const OperasiHitung();
                    }));
                  },
                  child: const Text('Praktikum 6'),
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LatihanSoal();
                    }));
                  },
                  child: const Text('test'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
