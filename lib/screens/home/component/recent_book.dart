// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:advanced_ui/themes.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({
    Key? key,
    required this.image,
    required this.title,
    required this.datapersen,
  }) : super(key: key);

  final String image;
  final String title;
  final double datapersen;

  // double percentage = double.parse(datapersen);

  @override
  Widget build(BuildContext context) {
    double percentage = datapersen;

    return Container(
      padding: const EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        border: Border.all(color: borderColorRecentBook),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 90.0,
            // height: 120.0,
            // fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: semiBoldText14.copyWith(
                  color: blackColor2,
                ),
              ),
              CircularPercentIndicator(
                reverse: true,
                radius: 40,
                lineWidth: 15,
                animation: true,
                percent: percentage,
                progressColor: greenColor,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              Text(
                "${(percentage * 100).toStringAsFixed(0)}% Completed",
                style: mediumText12.copyWith(color: greyColorRecentBook),
              ),
            ],
          )
        ],
      ),
    );
  }
}
