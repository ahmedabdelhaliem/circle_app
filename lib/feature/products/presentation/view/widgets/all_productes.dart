import 'package:circle/core/utils/assets.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AllProductes extends StatelessWidget {
  const AllProductes({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 40,
        width: 129,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffFDF4F4)),
        child: Row(
          children: [
            Image.asset(
              Assets.tools,
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: Styles.textStyle12,
            )
          ],
        ),
      ),
    );
  }
}
