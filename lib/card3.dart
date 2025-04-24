import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/theme_islemleri.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 450, height: 550),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/seffim.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.book, color: Colors.white, size: 40.0),
                  SizedBox(height: 8.0),
                  Text(
                    'Meşhur Tarifler',
                    style: TemaIslemleri.koyuYaziTema.headlineMedium,
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12.0,
                runSpacing: 12.0,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  ChipWidget(chipName: 'Sulu Yemek'),
                  ChipWidget(chipName: 'Çorbalar'),
                  ChipWidget(chipName: 'Tatlılar'),
                  ChipWidget(chipName: 'Salatalar'),
                  ChipWidget(chipName: 'İçecekler'),
                  ChipWidget(chipName: 'Kebaplar'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key, required this.chipName});

  final String chipName;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(chipName, style: TemaIslemleri.koyuYaziTema.bodyLarge),
      backgroundColor: Colors.black.withOpacity(0.6),
      onDeleted: () {
        final snackBar = SnackBar(content: Text('$chipName Silindi!'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
