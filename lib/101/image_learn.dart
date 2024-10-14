import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: 300,
            child: PngImages(name: ImageItems().appleBook),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleBook = "apple_book";
}

class PngImages extends StatelessWidget {
  const PngImages({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => "assets/png/$name.png";
}
