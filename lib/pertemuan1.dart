import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  TextEditingController pesanController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 1'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Usamah Abdul Matin',
                style: TextStyle(fontSize: 24.0),
              ),
              TextField(
                controller: pesanController,
              ),
              Container(
                margin: const EdgeInsets.only(top: 14.0),
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        pesanController.text,
                        style: const TextStyle(fontSize: 20.0),
                      ),
                      backgroundColor: Colors.green,
                    ));
                  },
                  child: const Text("Tombol"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
