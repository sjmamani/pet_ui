import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 150,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: detailButtonStyle,
              child: const Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: detailButtonStyle,
                child: const Text(
                  'Adoption',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
