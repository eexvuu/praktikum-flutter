import 'package:flutter/material.dart';

class WidgetLanjutan extends StatefulWidget {
  const WidgetLanjutan({super.key});

  @override
  State<WidgetLanjutan> createState() => _WidgetLanjutanState();
}

class _WidgetLanjutanState extends State<WidgetLanjutan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Latihan Widget Lanjutan',),),
      body: ListView(
        children: [
          Text('test image'),
          Image.asset('assets/gambar/img1.jpg'),
          Image.asset('assets/gambar/img2.jpg'),
          Image.network('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2022/01/add-image-in-flutter-hero.png?resize=950%2C500&ssl=1'),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: NetworkImage('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2022/01/add-image-in-flutter-hero.png?resize=950%2C500&ssl=1'),
            fit: BoxFit.cover)
            ),

          )
        ],
      )
    );
  }
}