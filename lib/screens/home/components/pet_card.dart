import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_ui/configuration.dart';

class PetCard extends StatelessWidget {
  const PetCard({
    Key key,
    @required this.imageUrl,
    @required this.cardColor,
    this.tapEvent,
  }) : super(key: key);

  final String imageUrl;
  final Color cardColor;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapEvent,
      child: Container(
        height: 240,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Hero(
                    tag: 1,
                    child: Align(
                      child: Image.asset(imageUrl),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 60, bottom: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: shadowList,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Sola',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const Icon(FontAwesomeIcons.mars),
                      ],
                    ),
                    Text(
                      'Abyssinian cat',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                    const Text('2 years old'),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryGreen,
                        ),
                        const Text('Distance: 3.6 km'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
