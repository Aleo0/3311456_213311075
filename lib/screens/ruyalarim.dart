import 'package:flutter/material.dart';


class ruyalarim extends StatefulWidget {
  const ruyalarim({Key? key}) : super(key: key);

  @override
  State<ruyalarim> createState() => _ruyalarimState();
}

class _ruyalarimState extends State<ruyalarim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: Text("Rüyalarım"),
        backgroundColor: Colors.black,),
      body: Container(
        color: Colors.amber[100],
        child: GridView.count(
          crossAxisCount: 2, // satırda kaç text
          mainAxisSpacing: 10, // satır arası boşluk
          crossAxisSpacing: 10, // sütun arası boşluk
          padding: EdgeInsets.all(10),
          children: List.generate(6, (index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text("Rüya ${index + 1}"),
              ),
            );
          }),
        ),
      ),
    );

  }
}
