import 'package:flutter/material.dart';

class DescrapitionCategory extends StatelessWidget {
  const DescrapitionCategory({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Text('فواكه طازجه'),
    );
  }
}
