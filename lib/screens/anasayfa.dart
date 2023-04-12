import 'package:aksakal/screens/ayarlar.dart';
import 'package:aksakal/screens/profil.dart';
import 'package:aksakal/screens/ruyalarim.dart';
import 'package:flutter/material.dart';
import 'package:aksakal/mywidget/bottomNavigationBar.dart';
import 'ruyaKaydet.dart';

class Anasayfa extends StatelessWidget {
  final String? isim;

  Anasayfa({this.isim});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/arkaplan.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              SizedBox(
                height: 70,
              ),

              Container(           ///Rüya tabirleri api ya da veri tabanından alınacak.
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.blue),
                    labelText: "Rüya Tabirleri",
                    hintText: "Çok Yakında...",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ruya()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(70),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/ruyabutonn2.png"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
