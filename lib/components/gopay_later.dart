import 'package:flutter/material.dart';
import 'package:learning_flutter/theme.dart';

class GopayLater extends StatelessWidget {
  const GopayLater({super.key});

  @override
  Widget build(BuildContext context) {
    return // Gopay Later
    Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/gopaylater.png', height: 14),
          const SizedBox(height: 8),
          Text(
            'Lebih hemat pake GoPayLater 🤩',
            style: bold16.copyWith(color: dark1),
          ),
          const SizedBox(height: 8),
          Text(
            'Yuk, belanja di Tokopedia pake Gopay Later dan nikmatin cashback-nya~',
            style: regular14.copyWith(color: dark2),
          ),
        ],
      ),
    );
  }
}
