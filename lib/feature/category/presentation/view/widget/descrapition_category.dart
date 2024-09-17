import 'package:circle/constant.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DescrapitionCategory extends StatelessWidget {
  const DescrapitionCategory({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration:
          BoxDecoration(color: kGray, borderRadius: BorderRadius.circular(5)),
      width: MediaQuery.of(context).size.width * .5,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                text,
                style: Styles.textStyle12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
