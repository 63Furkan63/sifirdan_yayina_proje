import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 3.0,
        title: Text('MYF Soft yemek', style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: Center(
        child: Text(
          'Haydi Yemek Pişirelim!',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
