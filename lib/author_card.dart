import 'package:flutter/material.dart';
import 'package:myapp/circle_image.dart';
import 'package:myapp/theme_islemleri.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
  });

  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavori = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(imageProvider: widget.imageProvider, imageRadius: 25),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: TemaIslemleri.acikYaziTema.headlineSmall,
                  ),
                  Text(
                    widget.title,
                    style: TemaIslemleri.acikYaziTema.headlineMedium,
                  ),
                ],
              ),
              SizedBox(width: 15.0),
            ],
          ),
          IconButton(
            iconSize: 25,
            color: Colors.red,
            onPressed: () {
              const snackBar = SnackBar(content: Text('Favorilere Eklendi!'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              setState(() {
                _isFavori = !_isFavori;
              });
            },
            icon: Icon(_isFavori ? Icons.favorite : Icons.favorite_border),
          ),
        ],
      ),
    );
  }
}
