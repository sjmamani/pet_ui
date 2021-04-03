import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.blueGrey[300],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
