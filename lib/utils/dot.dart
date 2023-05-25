import 'package:flutter/material.dart';

import '../const/colors.dart';

Widget dot(Color color) {
  return Padding(padding: const EdgeInsets.all(2.0),child: 
  Container(
    height: 6,
    width: 6,
    decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(width: 1, color: color)),
  ));
}
