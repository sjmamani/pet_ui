import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pet_ui/configuration.dart';
import 'package:pet_ui/screens/drawer/drawer.dart';
import 'package:pet_ui/screens/home/home.dart';

void main() {
  // runApp(
  //   DevicePreview(
  //     builder: (context) => MyApp(),
  //   ),
  // );
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      title: 'Pet UI',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: primaryGreen,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          )),
      home: Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
