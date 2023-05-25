import 'package:flutter/material.dart';
import 'package:hyperhire_assessment/const/style.dart';

import '../const/colors.dart';

Widget customchip(String title) {
  return Padding(
      padding: const EdgeInsets.only(right:8.0),
      child: Container(

        margin: const EdgeInsets.only(top: 3),
        padding: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
        decoration: BoxDecoration(
                color: chipBg.withAlpha(2),
                border: Border.all(color: chipBg, width: 1.0),
                borderRadius: const BorderRadius.all(
                    Radius.circular(10.0) //                 <--- border radius here
                    ),
              ),
        child: Text(
          title,
          style: chipTextStyle,
        ),
      ),
    );
}
