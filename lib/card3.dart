import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
        constraints: BoxConstraints.expand(width: 450,height: 550),
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/sefim.jpg'),
            fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10),),
        ),
        child: Stack(
          children: [
            
          ],
        ),
    )
   );
  }
}
