import 'package:cozy_app/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:cozy_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cozy_app/models/tips.dart';

class TipsCard extends StatelessWidget {
  final Tips? tips;

  TipsCard({this.tips});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          child: Image.asset(tips!.imageUrl),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips!.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Updated ${tips!.updatedAt}",
              style: greyTextStyle.copyWith(fontSize: 14),
            )
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            size: 24,
            color: greyColor,
          ),
        )
      ],
    );
  }
}
