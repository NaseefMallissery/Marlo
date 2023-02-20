import 'package:flutter/material.dart';
import 'package:marlo/helpers/constants/app_styles.dart';


class SeeAllWidget extends StatelessWidget {
  const SeeAllWidget({
    Key? key,
    required this.length,
    required this.text,
  }) : super(key: key);
  final String text;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$text . $length',
            style: AppFontstyle.subtitleStyle,
          ),
          const Text(
            'See all',
            style: AppFontstyle.seeAllStyle,
          ),
        ],
      ),
    );
  }
}
