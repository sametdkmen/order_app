import 'package:flutter/material.dart';
import 'package:odev3/alisveristamamla.dart';
import 'package:odev3/renkler.dart';
import 'package:odev3/urunler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    // Ekranın bilgisini alıyoruz (genişlik-width , yükseklik-height)
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran yuksekligi : $ekranYuksekligi");
    print("Ekran genisligi : $ekranGenisligi");
    return Scaffold(
      backgroundColor: Colors.white54.withOpacity(0.8),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: const Text("Sepetim",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Martel")),
        ),
        backgroundColor: arkaplan,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: const Text(
              "Ürünler",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Urunler(
              urunAdi: "Laptop",
              resimYolu: "resimler/laptop.png",
              ozellik1: "Intel i5 12500H",
              ozellik2: "8 GB RAM",
              ozellik3: "Nvidia MX350",
              fiyat: 400,
              paraBirimi: "\$",
              ekranwidth: ekranGenisligi),
          Urunler(
              urunAdi: "Yazıcı",
              resimYolu: "resimler/printer.png",
              ozellik1: "Hp Yazıcı",
              ozellik2: "Renkli",
              ozellik3: "Wifi",
              fiyat: 60,
              paraBirimi: "\$",
              ekranwidth: ekranGenisligi),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(top: ekranGenisligi / 10),
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), //container kenarların yuvarlaklıgı
                color: Colors.white12.withOpacity(0.6), //container rengi
                boxShadow: [BoxShadow(blurRadius: 15, color: Colors.grey.withOpacity(0.5),),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text("Toplam Fiyat : \$ 460",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    shadows: [Shadow(color: Colors.white10, offset: Offset(-2, -2)), Shadow(color: Colors.black.withOpacity(0.7), blurRadius: 7, offset: Offset(1, 1))],),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi / 12),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AlisverisiTamamla()));
              },
              child: Text("Siparişi Onayla",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey.withOpacity(0.8)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
