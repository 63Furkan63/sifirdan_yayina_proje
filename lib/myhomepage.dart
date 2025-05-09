
import 'package:flutter/material.dart';
import 'package:myapp/tarif.dart';
import 'package:myapp/tarif_detay.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,

        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Tarif.yemekler.length,
          itemBuilder: (context, index) {
            return GestureDetector
            (
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TarifDetay(tarif: Tarif.yemekler[index]),
                  ),
                );
              },
              child: tarifOlustur(Tarif.yemekler[index]));
          },
        ),
      ),
    );
  }

  Widget tarifOlustur(Tarif tarif) {
    return Card(
      color: Colors.blueAccent,
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image(image: AssetImage(tarif.yemekResmi)),
            SizedBox(height: 10.0),
            Text(
              tarif.yemekAdi,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}