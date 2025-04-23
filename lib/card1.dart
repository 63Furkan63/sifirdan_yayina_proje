import 'package:flutter/material.dart';
import 'package:myapp/theme_islemleri.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  final String kategori = 'Editörün seçimi';
  final String baslik = 'Hamur sanatı';
  final String aciklama = 'Mükemmel yemek yapmayı öğrenin!';
  final String sef = 'M.Furkan KILIÇ';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(15.0),
        constraints: const BoxConstraints.expand(width: 450, height: 550),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sefim.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          children: [
            Text(kategori, style: TemaIslemleri.acikYaziTema.bodyMedium),
            Positioned(
              top: 22,
              child: Text(
                baslik,
                style: TemaIslemleri.acikYaziTema.headlineSmall,
              ),
            ),
            Positioned(
              bottom: 28,
              right: 0,
              child: Text(
                aciklama,
                style: TemaIslemleri.acikYaziTema.headlineSmall,
              ),
            ),
            Positioned(
              bottom: 5,
              right: 0,
              child: Text(sef, style: TemaIslemleri.acikYaziTema.headlineSmall),
            ),
          ],
        ),
      ),
    );
  }
}
