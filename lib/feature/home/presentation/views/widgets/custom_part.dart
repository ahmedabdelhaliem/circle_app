import 'package:cached_network_image/cached_network_image.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomPart extends StatelessWidget {
  const CustomPart({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 142,
        width: 82,
        child: Column(
          mainAxisSize: MainAxisSize.min, // لتصغير الحجم بحيث يناسب المحتويات
          children: [
            CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.fill,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            const SizedBox(height: 10), // إضافة مسافة بين الصورة والنص
            Text(
              title, // النص مع فاصل سطر لجعل الكلمات فوق بعضها البعض
              textAlign: TextAlign.center, // لجعل النص في المنتصف
              style: Styles.textStyle16,
            ),
          ],
        ),
      ),
    );
  }
}
