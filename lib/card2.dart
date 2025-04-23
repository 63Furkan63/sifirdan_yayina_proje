import 'package:flutter/material.dart';

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
        child: Column(children: [

          ],
        ),
      ),
    );
  }
}
