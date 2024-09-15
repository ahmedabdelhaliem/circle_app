import 'package:circle/constant.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool states = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: kRed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5), // زوايا منحنية
      ),
      value: states,
      onChanged: (value) {
        setState(() {
          states = value!;
        });
      },
    );
  }
}
