import 'package:flutter/material.dart';

class PetImage extends StatelessWidget {
  const PetImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 1,
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset('assets/images/pet-cat2.png'),
      ),
    );
  }
}
