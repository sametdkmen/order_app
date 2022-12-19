import 'package:flutter/material.dart';
import 'package:odev3/anasayfa.dart';
import 'package:odev3/renkler.dart';

class Urunler extends StatelessWidget {
  String urunAdi;
  String resimYolu;
  String ozellik1;
  String ozellik2;
  String ozellik3;
  int fiyat;
  String paraBirimi;

  Urunler(
      {required this.urunAdi,
      required this.resimYolu,
      required this.ozellik1,
      required this.ozellik2,
      required this.ozellik3,
      required this.fiyat,
      required this.paraBirimi,
     required this.ekranwidth});

  double ekranwidth;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10),
          child: Container(
            width: ekranwidth,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), //container kenarların yuvarlaklıgı
              color: Colors.white12.withOpacity(0.6), //container rengi
              boxShadow: [BoxShadow(blurRadius: 15, color: Colors.grey.withOpacity(0.5),),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(resimYolu, width: 120, height: 120),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //eşit boşluklar yarattık.
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //yazıları birbirine soldan hizaladık start noktasına getirdik.
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        urunAdi,
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                    Text(ozellik1, style: TextStyle(fontSize: 14)),
                    Text(ozellik2, style: TextStyle(fontSize: 14)),
                    Text(ozellik3, style: TextStyle(fontSize: 14)),
                    Padding(
                      padding: EdgeInsets.only(left: ekranwidth / 2.7), //urun containerının içindeki durumu
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), //container kenarların yuvarlaklıgı
                          color: Colors.white12.withOpacity(0.6), //container rengi
                          boxShadow: [BoxShadow(blurRadius: 15, color: Colors.grey.withOpacity(0.5),),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text(
                            "$fiyat $paraBirimi",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: yazirenk.withOpacity(0.9),
                              shadows: [Shadow(color: Colors.grey.withOpacity(0.1), offset: Offset(-1, -1)), Shadow(color: Colors.grey.withOpacity(0.7), blurRadius: 10, offset: Offset(1, 1))],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );

  }
}
