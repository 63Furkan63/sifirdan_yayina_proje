import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
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
      home: Home(),
    );
  }
}
