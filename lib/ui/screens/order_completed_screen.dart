import 'package:flutter/material.dart';
import 'package:order_app/core/app_colors.dart';

/// Confirmation screen shown after the order is placed.
class OrderCompletedScreen extends StatelessWidget {
  const OrderCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            "Alışverişi Tamamla",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "Martel",
            ),
          ),
        ),
        backgroundColor: AppColors.appBarBackground,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/cargo.png", width: 160, height: 160),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Alışveriş başarıyla tamamlandı..",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                shadows: [
                  Shadow(color: Colors.redAccent.withValues(alpha: 0.2), offset: const Offset(-1, -1)),
                  Shadow(color: Colors.grey.withValues(alpha: 0.7), blurRadius: 12, offset: const Offset(1, 1)),
                ],
                color: Colors.amber.shade600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
