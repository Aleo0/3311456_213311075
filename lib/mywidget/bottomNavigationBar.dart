import 'package:aksakal/screens/anasayfa.dart';
import 'package:aksakal/screens/ayarlar.dart';
import 'package:aksakal/screens/profil.dart';
import 'package:flutter/material.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}
      var sayfalar=[Anasayfa(), ProfilSayfasi(), AyarlarSayfasi()];
      int secilenIndex=0;
class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar( items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Anasayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Ayarlar',
            ),
          ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        currentIndex: secilenIndex,
        onTap: (value){
        setState(() {
          secilenIndex=value;
        });
        },
      ),
    );

  }
}
