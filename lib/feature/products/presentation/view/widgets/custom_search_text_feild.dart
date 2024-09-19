import 'package:circle/constant.dart';
import 'package:flutter/material.dart';

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center, // محاذاة النص أفقيًا في منتصف شريط البحث
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffEEEEEE),
        hintText: 'منتج معين',
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ), // تنسيق النص التلميحي
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:
              BorderSide(color: Colors.grey.shade300), // تحديد لون الحافة
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: kRed), // لون الحافة عند التركيز
        ),
        suffixIcon: const Padding(
          padding: EdgeInsets.only(
              right:
                  12.0), // إضافة حشوة على اليمين لخلق مسافة بين النص وعلامة البحث
          child: Icon(
            Icons.search,
            color: kRed,
            size: 24, // حجم الأيقونة
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12), // ضبط الحشو الداخلي لتوسيع النص عموديًا
      ),
    );
  }
}
