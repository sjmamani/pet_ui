import 'package:flutter/material.dart';

class PetImage extends StatelessWidget {
  const PetImage({
    Key key,
    @required this.urlImage,
  }) : super(key: key);

  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: urlImage,
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(urlImage),
      ),
    );
  }
}
