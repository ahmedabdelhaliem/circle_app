import 'package:flutter/material.dart';

class DescrapitionProduct extends StatelessWidget {
  const DescrapitionProduct({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Text('فواكه طازجه'),
    );
  }
}
