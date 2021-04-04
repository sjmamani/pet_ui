import 'package:flutter/material.dart';
import 'package:pet_ui/models/cat.dart';
import 'package:pet_ui/screens/detail/detail.dart';
import 'components/custom_app_bar.dart';
import 'components/pet_card.dart';
import 'components/pet_categories.dart';
import 'components/search_field.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      // ..rotateY(isDrawerOpen ? -0.5 : 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isDrawerOpen ? 40.0 : 0),
        color: Colors.white,
      ),
      duration: const Duration(milliseconds: 250),
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              tapEvent: () {
                setState(() {
                  xOffset = isDrawerOpen ? 0 : 280;
                  yOffset = isDrawerOpen ? 0 : 150;
                  scaleFactor = isDrawerOpen ? 1 : 0.6;
                  isDrawerOpen = !isDrawerOpen;
                });
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                        bottomLeft: isDrawerOpen
                            ? const Radius.circular(40)
                            : Radius.zero,
                        topLeft: const Radius.circular(25),
                        topRight: const Radius.circular(25))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const SearchField(),
                      const SizedBox(
                        height: 30,
                      ),
                      const PetCategories(),
                      for (var cat in cats)
                        PetCard(
                          cat: cat,
                          tapEvent: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailScreen(cat: cat)));
                          },
                        )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
