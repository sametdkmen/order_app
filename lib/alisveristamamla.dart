import 'package:flutter/material.dart';
import 'package:odev3/renkler.dart';

class AlisverisiTamamla extends StatefulWidget {
  const AlisverisiTamamla({Key? key}) : super(key: key);

  @override
  State<AlisverisiTamamla> createState() => _AlisverisiTamamlaState();
}

class _AlisverisiTamamlaState extends State<AlisverisiTamamla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: const Text("Alışverişi Tamamla",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Martel")),
        ),
        backgroundColor: arkaplan,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("resimler/kargo.png",width: 160,height: 160,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Alışveriş başarıyla tamamlandı..",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  shadows: [Shadow(color: Colors.redAccent.withOpacity(0.2), offset: Offset(-1, -1)), Shadow(color: Colors.grey.withOpacity(0.7), blurRadius: 12, offset: Offset(1, 1))],
                  //gölgelendirme ekledik. deneme yanılma ile değerleri belirledim.
                  color: Colors.amber.shade600),
                  textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
