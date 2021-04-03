import 'package:flutter/material.dart';

import 'components/back_and_share_buttons.dart';
import 'components/background.dart';
import 'components/bottom_buttons.dart';
import 'components/pet_image.dart';
import 'components/pet_info_card.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false, // for iOS
        child: Stack(
          children: const [
            Background(),
            BackAndShareButtons(),
            PetImage(),
            PetInfoCard(),
            BottomButtons(),
          ],
        ),
      ),
    );
  }
}
