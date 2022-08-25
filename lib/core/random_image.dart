import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.height = 100}) : super(key: key);
  final String imageUrl = 'https://picsum.photos/250?image=9';
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl, height: height, fit: BoxFit.cover);
  }
}
