import 'dart:math';

import 'package:flutter/material.dart';

class Leaderboard {
  final int? id;
  final String? name;
  final Color? backgroundColor;
  final int? miles;

  Leaderboard({
    this.id,
    this.name,
    this.backgroundColor,
    this.miles,
  });

  static List<Leaderboard> generateRandomLeaderboard([int count = 10]) {
    List<Leaderboard> list = [];

    // color list
    final List<Color> listBackgroundColor = [
      Colors.red,
      Colors.orange,
      Colors.blue,
      Colors.black38,
      Colors.purple,
    ];

    // generate here
    for (var i = 0; i < count; i++) {
      list.add(
        Leaderboard(
          id: i,
          name: 'User ${i + 1}',
          backgroundColor:
              listBackgroundColor[Random().nextInt(listBackgroundColor.length)],
          miles: Random().nextInt(1000),
        ),
      );
    }

    return list;
  }
}
