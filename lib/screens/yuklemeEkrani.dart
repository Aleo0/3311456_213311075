import 'package:aksakal/screens/girisEkrani.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class YuklemeEkrani extends StatefulWidget {
  @override
  _YuklemeEkraniState createState() => _YuklemeEkraniState();
}

class _YuklemeEkraniState extends State<YuklemeEkrani> {
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(      ///önceki sayfaya dönmeyi engeller
        context,
        MaterialPageRoute(builder: (context) => GirisEkrani()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/yuklemeEkranii.jpg'),
            fit: BoxFit.contain,
          ),
        ),
        child: Center(
          child: SpinKitSpinningLines(
            color: Colors.purple,
            size: 150.0,
            duration: Duration(milliseconds: 1200),
          ),
        ),
      ),

    );
  }
}