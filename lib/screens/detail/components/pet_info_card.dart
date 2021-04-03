import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class PetInfoCard extends StatelessWidget {
  const PetInfoCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Align(
      child: Container(
        height: 120,
        width: size.width * 0.8,
        // margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: shadowList,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
