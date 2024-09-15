import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;

  const CustomButtom({
    super.key,
    required this.name,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          fixedSize: Size(MediaQuery.of(context).size.width, 53),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
