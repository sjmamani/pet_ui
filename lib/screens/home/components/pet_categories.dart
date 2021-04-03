import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_ui/configuration.dart';
import 'package:pet_ui/providers/indexes.dart';

class PetCategories extends ConsumerWidget {
  const PetCategories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final int currentIndex = watch(indexCategoriesProvider).state;
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                InkWell(
                  focusColor: Colors.red,
                  highlightColor: Colors.blue,
                  hoverColor: Colors.yellow,
                  onTap: () =>
                      context.read(indexCategoriesProvider).state = index,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:
                          index == currentIndex ? primaryGreen : Colors.white,
                      boxShadow: shadowList,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      categories[index]['iconPath'],
                      height: 50,
                      width: 50,
                      color: index == currentIndex
                          ? Colors.white
                          : Colors.grey[700],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  categories[index]['name'],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
