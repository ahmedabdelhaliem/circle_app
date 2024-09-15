import 'package:circle/constant.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomRowSection extends StatelessWidget {
  const CustomRowSection({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            child: Text(
          '<عرض الكل>',
          style: Styles.textStyle12.copyWith(color: kRed),
        )),
        const Spacer(),
        Text(
          text,
          style: Styles.textStyle18,
        )
      ],
    );
  }
}
