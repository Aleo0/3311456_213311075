import 'package:flutter/material.dart';
import 'anasayfa.dart';




class GirisEkrani extends StatefulWidget {
  @override
  _GirisEkraniState createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  TextEditingController isimKontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text('Giriş'),
      ),
      body:
      Container( decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Colors.black]
        )
      ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: isimKontrol,
                decoration: InputDecoration(
                  labelText: 'İsminizi girin',
                ),
              ),
              SizedBox(height: 16.0),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Text('Giriş'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Anasayfa(isim: isimKontrol.text),
                    ),
                  );
                },
              ),

              SizedBox(height: 135,),

              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Hakkımızda'),
                        content: Text(
                            'Rüyaların gizemli dünyası hepimizi cezbeder ve Rüya Tabirleri uygulamamız, bu dünyanın kapılarını açmanıza yardımcı olur. Her türlü rüyayı anlamak için sunduğumuz farklı yorumlar, rüyalarınızın anlamlarını keşfetmenize yardımcı olacak araçlar sunar.'),
                        actions: [
                          TextButton(
                            child: Text('Tamam'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.info_outline),
                    SizedBox(width: 10),
                    Text('Hakkımızda', style: TextStyle(fontSize: 24)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



