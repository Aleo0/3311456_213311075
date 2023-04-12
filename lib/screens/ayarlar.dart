import 'package:flutter/material.dart';
import 'package:aksakal/mywidget/bottomNavigationBar.dart';
import 'package:country_code_picker/country_code_picker.dart';


class AyarlarSayfasi extends StatefulWidget {
  @override
  _AyarlarSayfasiState createState() => _AyarlarSayfasiState();
}

class _AyarlarSayfasiState extends State<AyarlarSayfasi> {
  bool bildirim = false;

  void checkbox(bool Value) {
    setState(() {
      bildirim = Value;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.black,
        title: Text('Ayarlar'),
      ),
      body:
      Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            Container(decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
              child: Row(
                children: [
                  CountryCodePicker(
                    initialSelection: 'TR',
                    hideMainText: true, //kodu gizler
                      showCountryOnly: true, //sadece ülke adı görünür
                  ),
                  Text("Dil", style: TextStyle(color: Colors.black,fontSize: 24),),
                ],
              ),
            ),

            SizedBox(height: 10),

      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: CheckboxListTile(
          title: Text(
            "Bildirimler",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          value: bildirim,
          activeColor: Colors.teal,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? veri) {
            setState(() {
              bildirim = veri!;
            });
          },
        ),
      ),

      ],
        ),
      ),
    );
  }
}