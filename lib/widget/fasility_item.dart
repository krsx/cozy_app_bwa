import 'package:flutter/material.dart';
import 'package:cozy_app/theme.dart';

class FacilityItem extends StatelessWidget {
  final int id;
  final String name;
  final String imageUrl;
  final int item;

  FacilityItem(
      {this.id = 0, this.name = "", this.imageUrl = "", this.item = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: "$item",
            style: purpleTextStyle.copyWith(
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: " $name",
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
