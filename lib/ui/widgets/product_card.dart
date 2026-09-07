import 'package:flutter/material.dart';
import 'package:order_app/core/app_colors.dart';

/// A single product row in the cart: image, name, three feature lines and price.
class ProductCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final List<String> features;
  final int price;
  final String currencySymbol;
  final double screenWidth;

  const ProductCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.features,
    required this.price,
    required this.currencySymbol,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10),
      child: Container(
        width: screenWidth,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white12.withValues(alpha: 0.6),
          boxShadow: [
            BoxShadow(blurRadius: 15, color: Colors.grey.withValues(alpha: 0.5)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(imagePath, width: 120, height: 120),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                for (final feature in features)
                  Text(feature, style: const TextStyle(fontSize: 14)),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth / 2.7),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white12.withValues(alpha: 0.6),
                      boxShadow: [
                        BoxShadow(blurRadius: 15, color: Colors.grey.withValues(alpha: 0.5)),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        "$price $currencySymbol",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppColors.priceText.withValues(alpha: 0.9),
                          shadows: [
                            Shadow(color: Colors.grey.withValues(alpha: 0.1), offset: const Offset(-1, -1)),
                            Shadow(color: Colors.grey.withValues(alpha: 0.7), blurRadius: 10, offset: const Offset(1, 1)),
                          ],
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
    );
  }
}
