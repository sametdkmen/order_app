import 'package:flutter/material.dart';
import 'package:order_app/core/app_colors.dart';
import 'package:order_app/ui/screens/order_completed_screen.dart';
import 'package:order_app/ui/widgets/product_card.dart';

/// Shows the products in the cart, the total price and the confirm button.
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    return Scaffold(
      backgroundColor: Colors.white54.withValues(alpha: 0.8),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            "Sepetim",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "Martel",
            ),
          ),
        ),
        backgroundColor: AppColors.appBarBackground,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Ürünler",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
          const SizedBox(height: 2),
          ProductCard(
            name: "Laptop",
            imagePath: "assets/images/laptop.png",
            features: const ["Intel i5 12500H", "8 GB RAM", "Nvidia MX350"],
            price: 400,
            currencySymbol: "\$",
            screenWidth: screenWidth,
          ),
          ProductCard(
            name: "Yazıcı",
            imagePath: "assets/images/printer.png",
            features: const ["Hp Yazıcı", "Renkli", "Wifi"],
            price: 60,
            currencySymbol: "\$",
            screenWidth: screenWidth,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.only(top: screenWidth / 10),
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white12.withValues(alpha: 0.6),
                boxShadow: [
                  BoxShadow(blurRadius: 15, color: Colors.grey.withValues(alpha: 0.5)),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Toplam Fiyat : \$ 460",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    shadows: [
                      const Shadow(color: Colors.white10, offset: Offset(-2, -2)),
                      Shadow(color: Colors.black.withValues(alpha: 0.7), blurRadius: 7, offset: const Offset(1, 1)),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight / 12),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderCompletedScreen()),
                );
              },
              style: TextButton.styleFrom(backgroundColor: Colors.grey.withValues(alpha: 0.8)),
              child: const Text(
                "Siparişi Onayla",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
