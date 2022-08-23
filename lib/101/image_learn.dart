import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
            height: 200,
            width: 200,
            child: PngImage(name: ImageItems().appleBookWithoutPath)),
        Image.network("",
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.abc_outlined)),
      ]),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/png/apple_book.png";
  final String appleBookWithoutPath = "apple_book";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
