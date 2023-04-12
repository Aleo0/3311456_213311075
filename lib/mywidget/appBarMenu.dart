import 'package:aksakal/screens/ayarlar.dart';
import 'package:aksakal/screens/profil.dart';
import 'package:aksakal/screens/ruyalarim.dart';
import 'package:flutter/material.dart';

class appBarMenu extends StatelessWidget {
  const appBarMenu({
    super.key,
    required this.isim,
  });

  final String? isim;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text('Hoşgeldin $isim'),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ruyalarim()),
            );
          },
        ),
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilSayfasi()),
            );
          },
        ),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AyarlarSayfasi()),
            );
          },
        ),
      ],
    );
  }
}