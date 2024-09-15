import 'package:circle/core/utils/assets.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomPart extends StatelessWidget {
  const CustomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 142,
        width: 82,
        child: Column(
          mainAxisSize: MainAxisSize.min, // لتصغير الحجم بحيث يناسب المحتويات
          children: [
            Image.asset(
              Assets.icon, // مسار الصورة
              width: 50, // تحديد عرض الصورة
              height: 50, // تحديد ارتفاع الصورة
              fit: BoxFit.cover, // لضبط طريقة عرض الصورة
            ),
            const SizedBox(height: 10), // إضافة مسافة بين الصورة والنص
            const Text(
              'منتجات\nالعناية', // النص مع فاصل سطر لجعل الكلمات فوق بعضها البعض
              textAlign: TextAlign.center, // لجعل النص في المنتصف
              style: Styles.textStyle16,
            ),
          ],
        ),
      ),
    );
  }
}
