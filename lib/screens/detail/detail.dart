import 'package:flutter/material.dart';
import 'package:pet_ui/models/cat.dart';

import 'components/back_and_share_buttons.dart';
import 'components/background.dart';
import 'components/bottom_buttons.dart';
import 'components/pet_image.dart';
import 'components/pet_info_card.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key, @required this.cat}) : super(key: key);

  final Cat cat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false, // for iOS
        child: Stack(
          children: [
            const Background(),
            const BackAndShareButtons(),
            PetImage(urlImage: cat.urlImage),
            const PetInfoCard(),
            const BottomButtons(),
          ],
        ),
      ),
    );
  }
}
