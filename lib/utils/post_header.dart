import 'package:flutter/material.dart';
import 'package:hyperhire_assessment/const/assets.dart';
import 'package:hyperhire_assessment/const/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../const/style.dart';

Widget postHeader(String name, String username, String length, String weight,
    VoidCallback buttonPressed, String btnText) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(children: [
        CircleAvatar(
            backgroundColor: avatarBg,
            child:ClipRRect(
     borderRadius: BorderRadius.circular(300.0),
     child: 
             Image.asset(
              avatar,
              height: 68.sp,
              width: 38.sp,
              

            ))),
        const SizedBox(
          width: 8.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: boldliteTextStyle,
                ),
                 SizedBox(
                  width: 4.sp,
                ),
                Image.asset(
                  verification,
                  width: 14.sp,
                  height: 14.sp,
                ),
                 SizedBox(
                  width: 4.sp,
                ),
                Text(
                  username,
                  style: subtitleTextStyle,
                )
              ],
            ),
            Text(
              "$length • $weight",
              style: subtitleTextStyle,
            )
          ],
        ),
      ]),
     
      ElevatedButton(
          onPressed: () {
            buttonPressed();
          },
          
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(999.0),
              ),
              backgroundColor: greenMintColor),
          child: Text(
            btnText,
            style: btnTextStyle,
          ))
    ],
  );
}
