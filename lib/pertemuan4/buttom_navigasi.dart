import 'package:flutter/material.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'page_three.dart';

class ButtomNavigasiBar extends StatefulWidget {
  const ButtomNavigasiBar({super.key});

  @override
  State<ButtomNavigasiBar> createState() => _ButtomNavigasiBarState();
}

class _ButtomNavigasiBarState extends State<ButtomNavigasiBar> {
  int currentIndex = 0;
  List myMenu = const [PageOne(), PageTwo(), PageThree()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan Bottom Navigasi')),
      body: myMenu[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
