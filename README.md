# Order App

Flutter ile hazırlanmış basit bir **sepet ve sipariş onayı** arayüzüdür. Kullanıcı
sepetindeki ürünleri özellikleri ve fiyatlarıyla görür, toplam tutarı inceler ve
"Siparişi Onayla" düğmesine bastığında sipariş tamamlandı ekranına yönlendirilir.

Bu proje bir Flutter bootcamp'inin 2. haftasında yapılan tasarım ödevi olarak
başlamıştır; veri sabittir, gerçek bir ödeme ya da ağ işlemi yoktur.

## Ekranlar

- **Sepetim:** İki ürün kartı (Laptop, Yazıcı), her kartta ürün görseli, üç
  özellik satırı ve fiyat rozeti. Altta toplam fiyat kutusu ve onay düğmesi.
- **Alışverişi Tamamla:** Kargo görseli ve "Alışveriş başarıyla tamamlandı"
  mesajı.

## Proje yapısı

```
lib/
├── main.dart                          # Uygulama girişi
├── core/
│   └── app_colors.dart                # Renk paleti
└── ui/
    ├── screens/
    │   ├── cart_screen.dart           # Sepet ekranı
    │   └── order_completed_screen.dart# Sipariş tamamlandı ekranı
    └── widgets/
        └── product_card.dart          # Yeniden kullanılabilir ürün kartı
assets/
├── fonts/Martel-Regular.ttf           # Başlık yazı tipi
└── images/                            # laptop, printer, cargo görselleri
```

## Çalıştırma

```bash
flutter pub get
flutter run
```
