import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
    @required this.tapEvent,
  }) : super(key: key);

  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: const Icon(
                Icons.menu,
                size: 32,
              ),
              onPressed: tapEvent),
          Column(
            children: [
              const Text('Location'),
              Row(
                children: [
                  Icon(Icons.location_on, color: primaryGreen),
                  const Text('Buenos Aires'),
                ],
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: primaryGreen,
            child: const Icon(Icons.person_outline),
          ),
        ],
      ),
    );
  }
}
