import 'package:flutter/material.dart';
import 'package:hyperhire_assessment/const/assets.dart';
import 'package:hyperhire_assessment/const/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../const/style.dart';

Widget commentView(String name, String username, bool isThread,bool isVerified,
    {required Widget commenttext, Widget? thread, required Widget imageavatar}) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(children: [
              imageavatar,
              const SizedBox(
                width: 8.0,
              ),
              Row(
                children: [
                  Text(
                    name,
                    style: boldliteTextStyle,
                  ),
                  if(isVerified)...{
                  const SizedBox(
                    width: 4.0,
                  ),
                  Image.asset(
                    verification,
                    width: 14.0,
                    height: 14.0,
                  ),
                  },
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    username,
                    style: subtitleTextStyle,
                  )
                ],
              ),
            ]),
            Image.asset(
              more,
              height: 17.33.sp,
              width: 25.sp,
            ),
          ],
        ),
        Padding(padding: const EdgeInsets.only(left: 50.0), child: commenttext),
        const SizedBox(
          height: 4.0,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Row(
              children: [
                Image.asset(
                  heart,
                  height: 17.33.sp,
                  width: 20.sp,
                ),
                Text(
                  "5",
                  style: subtitleTextStylegray,
                ),
                if (isThread == false) ...{
                  const SizedBox(
                    width: 8.0,
                  ),
                  Image.asset(
                    comment,
                    height: 17.33.sp,
                    width: 20.sp,
                  ),
                  Text(
                    "5",
                    style: subtitleTextStylegray,
                  ),
                }
              ],
            )),
        if (thread != null) ...{
          const SizedBox(
            height: 17.0,
          ),
          Padding(padding: const EdgeInsets.only(left: 50.0), child: thread)
        }
      ]);
}
