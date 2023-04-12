import 'package:aksakal/screens/girisEkrani.dart';
import 'package:aksakal/screens/yuklemeEkrani.dart';
import 'package:flutter/material.dart';
import 'mywidget/bottomNavigationBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YuklemeEkrani(),
    );
  }

}

