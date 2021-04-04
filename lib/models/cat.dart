import 'package:flutter/material.dart';

class Cat {
  Cat({
    this.color,
    this.name,
    this.race,
    this.age,
    this.distance,
    this.urlImage,
  });

  final String name;
  final String race;
  final String age;
  final double distance;
  final Color color;
  final String urlImage;
}

final List<Cat> cats = [
  Cat(
    age: '2 years old',
    distance: 3.2,
    name: 'Sola',
    race: 'Abyssinian cat',
    color: Colors.blueGrey[300],
    urlImage: 'assets/images/pet-cat2.png',
  ),
  Cat(
    age: '1.5 years old',
    distance: 3.6,
    name: 'Orion',
    race: 'Abyssinian cat',
    color: Colors.orange[200],
    urlImage: 'assets/images/pet-cat1.png',
  ),
];
