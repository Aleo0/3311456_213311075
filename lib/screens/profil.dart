import 'package:flutter/material.dart';
import 'package:aksakal/mywidget/bottomNavigationBar.dart';

class ProfilSayfasi extends StatefulWidget {
  @override
  _ProfilSayfasiState createState() => _ProfilSayfasiState();
}

class _ProfilSayfasiState extends State<ProfilSayfasi> {


  String mesaj = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Profil')),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/mfs.jpg'),
                radius: 75,
              ),

              SizedBox(height: 20),

              TextFormField(
                decoration: InputDecoration(
                  prefix: Icon(Icons.drive_file_rename_outline_sharp),
                  labelText: 'Ad',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 2),

              TextFormField(
                decoration: InputDecoration(
                  prefix: Icon(Icons.drive_file_rename_outline_rounded),
                  labelText: 'Soyad',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 2),

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'E-posta Adresi',
                  border: OutlineInputBorder(),
                  prefix: Icon(Icons.mail),
                ),
              ),
              SizedBox(height: 5),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    mesaj = "Bilgilerinizi Kaydedildi!";
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.grey,
                      content: Text(mesaj),
                    ),
                  );
                },
                child: const Text('Kaydet'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

