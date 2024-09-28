import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  final String? image;
  final double? width;
  final double? hight;

  // متغير للتحكم في العرض

  const CustomButton({
    super.key,
    required this.name,
    required this.onPressed,
    this.image,
    this.width,
    this.hight, // قبول العرض كمدخل
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight,
      width: width, // ضبط العرض بناءً على المدخل
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.red, // لون الخلفية
          padding: const EdgeInsets.symmetric(
              vertical: 12, horizontal: 16), // إضافة مسافات داخلية (Padding)
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // الحواف الدائرية
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null) ...[
              Image.asset(
                image!,
                height: 18,
                width: 16,
              ),
              const SizedBox(width: 8), // إضافة مسافة بين النص والصورة

              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
