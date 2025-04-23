import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  final String kategori = 'Editörün seçimi';
  final String baslik = 'Hamur sanatı';
  final String aciklama = 'Mükemmel ekmeği yapmayı öğrenin';
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
      ),
    );
  }
}
