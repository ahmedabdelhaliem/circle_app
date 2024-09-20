import 'package:circle/core/utils/App_router.dart';
import 'package:circle/core/utils/assets.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategorySectionProduct extends StatelessWidget {
  const CategorySectionProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kDetailsProduct);
        },
        child: Container(
          height: 191,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1), // لون الخلفية الرمادي الشفاف
            borderRadius: BorderRadius.circular(10),
          ),
          width: 167,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.favorite_border, // أيقونة القلب
                      color: Colors.grey, // لون الأيقونة
                    ),
                  ],
                ),
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    Assets.show, // تأكد من مسار الصورة الصحيح
                    width: 150,
                    height: 105,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'اسم المنتج', // اسم المنتج
                    style: Styles.textStyle14,
                  ),
                ),
                const SizedBox(height: 4),
                const Spacer(),
                Row(
                  children: [
                    const Text(
                      '15', // السعر
                      style: Styles.textStyle16,
                    ),
                    Text(
                      'ج.م', // السعر
                      style: Styles.textStyle12.copyWith(
                        color: Colors.black.withOpacity(.7),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '400 ج.م ', // السعر
                      style: Styles.textStyle12.copyWith(
                        color: Colors.black.withOpacity(.7),
                        decoration:
                            TextDecoration.lineThrough, // إضافة خط فوق النص
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                        color: Colors.red, // لون الخلفية
                        shape: BoxShape.circle, // جعل الحاوية دائرية
                      ),
                      child: IconButton(
                        padding:
                            EdgeInsets.zero, // لإزالة المسافات حول الأيقونة
                        iconSize: 16, // حجم الأيقونة
                        onPressed: () {
                          // يمكنك إضافة وظيفة هنا لإضافة المنتج إلى السلة
                        },
                        icon: const Icon(
                          Icons.shopping_cart_outlined, // أيقونة السلة
                          color: Colors.white, // لون الأيقونة داخل الزر
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
