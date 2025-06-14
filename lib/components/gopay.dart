import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_flutter/datas/icons.dart';
import 'package:learning_flutter/theme.dart';

class Gopay extends StatelessWidget {
  const Gopay({super.key});

  @override
  Widget build(BuildContext context) {
    return // Gopay Section
    Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Stack(
        children: [
          // First container gopay
          Container(
            height: 96,
            width: double.infinity,
            decoration: BoxDecoration(
              color: blue1,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // DOT LINE
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 2,
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFFBBBBBB),
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: 2,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                    ],
                  ),
                ),

                // GOPAY SALDO CARD
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    children: [
                      Container(
                        height: 11,
                        width: 118,
                        decoration: const BoxDecoration(
                          color: Color(0xFF9CCDDB),
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: 73,
                        width: 127,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/gopay.png', height: 14),
                            const SizedBox(height: 2),
                            Text(
                              'Rp20.210',
                              style: bold16.copyWith(color: dark1),
                            ),
                            Text(
                              'Klik & cek riwayat',
                              style: semibold12_5.copyWith(color: green1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ICON BUTTONS
                ...gopayIcons.map(
                  (icon) => Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/${icon.icon}.svg',
                            color: blue1,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          icon.title,
                          style: semibold14.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Ornament
          Positioned(
            bottom: -20,
            right: -20,
            child: ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE0F2F1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
