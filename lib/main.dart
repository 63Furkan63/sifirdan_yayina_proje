import 'package:flutter/material.dart';
import 'package:myapp/tarif.dart';
import 'package:myapp/tarif_detay.dart';
import 'package:myapp/theme_islemleri.dart';

void main() {
  runApp(const TarifApp());
}

class TarifApp extends StatelessWidget {
  const TarifApp({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = TemaIslemleri.acik();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarif Uygulaması',
      theme: tema,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 3.0,
          title: Text('MYF Soft yemek',style: tema.textTheme.headlineLarge,),
        ),
        body: Center(child: Text('Haydi Yemek Pişirelim!',style: tema.textTheme.headlineMedium,),
        ),
      ),
    );
  }
}
