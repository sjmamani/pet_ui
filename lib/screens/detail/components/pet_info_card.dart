import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: shadowList,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Sola',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Icon(
                  FontAwesomeIcons.mars,
                  color: Colors.grey,
                  size: 32,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Abyssinian cat',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
                const Text('2 years old'),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: primaryGreen,
                ),
                const Text('Belgrano, Ciudad de Buenos Aires'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
