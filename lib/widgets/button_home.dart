import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final Widget lokasi;
  final String judul;
  final String deskripsi;

  const HomeButton(
      {super.key,
      required this.lokasi,
      required this.judul,
      required this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 200,
        width: double.infinity,
        child: Container(
          decoration: const BoxDecoration(),
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.amber,
                width: double.infinity,
                child: const FlutterLogo(
                  size: 120,
                ),
              ),
              Text(deskripsi),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => lokasi),
                  );
                },
                child: Center(
                  child: Text(judul),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
