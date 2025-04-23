import 'package:flutter/material.dart';

class TarifDetay extends StatefulWidget {
  const TarifDetay({super.key});

  @override
  State<TarifDetay> createState() => _TarifDetayState();
}

class _TarifDetayState extends State<TarifDetay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: Colors.amberAccent,
      child: Text("Selam Gazza"),
      );
  }
}
