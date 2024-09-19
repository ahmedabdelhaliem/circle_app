import 'package:circle/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomCategorySection extends StatefulWidget {
  const CustomCategorySection({super.key});

  @override
  _CustomCategorySectionState createState() => _CustomCategorySectionState();
}

class _CustomCategorySectionState extends State<CustomCategorySection> {
  bool _isTapped = false; // حالة لتحديد ما إذا تم الضغط على العنصر

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isTapped = !_isTapped; // تغيير الحالة عند الضغط على العنصر
        });
      },
      child: Column(
        children: [
          Container(
            width: 78,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _isTapped
                  ? Colors.red
                  : Colors.transparent, // تغيير اللون عند الضغط
            ),
            child: Image.asset(
              Assets.categories, // مسار الصورة
              width: 78, // تحديد عرض الصورة
              height: 110, // تحديد ارتفاع الصورة
              fit: BoxFit.fill, // لضبط طريقة عرض الصورة
            ),
          ),
        ],
      ),
    );
  }
}
