import 'package:flutter/material.dart';
import 'package:myapp/tarif.dart';

void main() {
  runApp(const TarifApp());
}

class TarifApp extends StatelessWidget {
  const TarifApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarif Uygulaması',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tarif Uygulamam'),
    );
  }
}

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
            return tarifOlustur(Tarif.yemekler[index]);
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
