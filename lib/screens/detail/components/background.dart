import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

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
            margin: const EdgeInsets.only(top: 80),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: primaryGreen,
                      child: const Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Kendall Jenner',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                    'Consequat excepteur ipsum ut enim voluptate cillum adipisicing nostrud Lorem. Incididunt tempor laborum quis irure consequat reprehenderit irure ea magna eiusmod ipsum sit.'),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
