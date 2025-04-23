import 'package:flutter/material.dart';
import 'package:myapp/author_card.dart';
import 'package:myapp/theme_islemleri.dart';

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 450, height: 550),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/seff.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            AuthorCard(
              authorName: 'M.Furkan KILIÇ',
              title: 'Kebap Türleri',
              imageProvider: AssetImage('assets/kilic.jpg'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Tarif',
                      style: TemaIslemleri.acikYaziTema.headlineLarge,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    right: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'İçecekler',
                        style: TemaIslemleri.acikYaziTema.headlineLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
