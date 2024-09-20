import 'package:circle/constant.dart';
import 'package:circle/core/utils/assets.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DetailsProductBody extends StatelessWidget {
  const DetailsProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.product,
            height: 243,
            width: 343,
          ),
          const SizedBox(height: 16),
          Row(children: [
            Text(
              'جمبري',
              style: Styles.textStyle18.copyWith(color: kRed),
            ),
            const Spacer(),
            const Icon(
              Icons.favorite_border, // أيقونة القلب
              color: Colors.grey, // لون الأيقونة
            ),
          ]),
          // مسافة بين الصورة والنص
          const Center(
            // لتوسيع النص في المنتصف
            child: Column(
              children: [
                Text(
                  'مصدر للفيتامينات والمعادن: الجمبري يحتوي على مجموعة متنوعة من الفيتامينات والمعادن، مثل فيتامين B12 والنياسين والفوسفور والسيلينيوم واليود.',
                  textAlign: TextAlign.center, // لجعل الوصف في المنتصف
                  softWrap: true,
                  style: Styles.textStyle12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
