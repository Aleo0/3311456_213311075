import 'package:flutter/material.dart';


class Ruya extends StatefulWidget {
  const Ruya({Key? key}) : super(key: key);

  @override
  State<Ruya> createState() => _RuyaState();
}

class _RuyaState extends State<Ruya> {
  final TextEditingController metinkontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.black,
        title: Text("Rüya Günlüğü"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: TextField(
                controller: metinkontrol,
                maxLines: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  hintText: "Rüyanı Anlat",
                  contentPadding: EdgeInsets.all(10.0),
                ),
              ),

            ),
            ElevatedButton(
              onPressed: () {
                 String ruyaMetni = metinkontrol.text;
                if (ruyaMetni.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Rüya kaydedildi!",
                        style: TextStyle(fontSize: 20),
                      ),
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.orangeAccent,
                    ),
                  );

                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                   const SnackBar(
                      content: Text(
                        "Lütfen rüyanızı yazın",
                        style: TextStyle(fontSize: 20),
                      ),
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.redAccent,
                    ),
                  );
                }
              }, style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
              child: Text("Kaydet"),
            ),
          ],
        ),
      ),
    );
  }
}

