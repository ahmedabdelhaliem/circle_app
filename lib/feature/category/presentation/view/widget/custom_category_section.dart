import 'package:circle/core/utils/assets.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomCategorySection extends StatelessWidget {
  const CustomCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisSize: MainAxisSize.min, // لتصغير الحجم بحيث يناسب المحتويات
        children: [
          SizedBox(
            height: 110,
            width: 78,
            child: Column(
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
        ],
      ),
    );
  }
}
