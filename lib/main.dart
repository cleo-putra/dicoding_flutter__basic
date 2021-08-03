import 'package:dicoding_final/pages/page_utama.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aviation Journal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Barlow',
        primaryTextTheme: TextTheme(
          headline3: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
          headline4: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
          headline5: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          headline6: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ),
      home: PageUtama(),
    );
  }
}
