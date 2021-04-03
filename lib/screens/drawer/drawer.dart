import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_ui/configuration.dart';
import 'package:pet_ui/providers/indexes.dart';

class DrawerScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final int index = watch(indexDrawerProvider).state;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 30, left: 10),
        color: primaryGreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person_outline,
                    color: primaryGreen,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Santiago Mamani',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text('Active status',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            Column(
              children: drawerItems.map((element) {
                final currentIndex = drawerItems.indexOf(element);
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 16.0),
                  child: GestureDetector(
                    onTap: () =>
                        context.read(indexDrawerProvider).state = currentIndex,
                    child: Row(
                      children: [
                        Icon(
                          element['icon'] as IconData,
                          color: currentIndex == index
                              ? Colors.white
                              : Colors.grey[200].withOpacity(0.5),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(element['title'] as String,
                            style: TextStyle(
                                color: currentIndex == index
                                    ? Colors.white
                                    : Colors.grey[200].withOpacity(0.5),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            Row(
              children: [
                const Icon(Icons.settings, color: Colors.white),
                const SizedBox(
                  width: 10,
                ),
                const Text('Settings',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 10,
                ),
                Container(width: 2, height: 20, color: Colors.white),
                const SizedBox(
                  width: 10,
                ),
                const Text('Log out',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
