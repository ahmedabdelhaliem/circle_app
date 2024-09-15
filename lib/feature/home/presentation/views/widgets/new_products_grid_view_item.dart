import 'package:flutter/material.dart';
import 'package:circle/core/utils/assets.dart';
import 'package:circle/core/utils/styles.dart';

class NewProductsGridViewItem extends StatelessWidget {
  const NewProductsGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Container(
        height: 190,
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
              const SizedBox(
                height: 8,
              ),
              // الصورة مع علامة القلب
              Stack(
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        Assets.show, // تأكد من مسار الصورة الصحيح
                        width: 150,
                        height: 106,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(
                          4), // حشوة داخل الحاوية لجعل الدائرة أكبر قليلاً
                      decoration: const BoxDecoration(
                        color: Colors.white, // خلفية بيضاء
                        shape: BoxShape.circle, // جعل الحاوية دائرية
                      ),
                      child: const Icon(
                        Icons.favorite_border, // أيقونة القلب
                        color: Colors.grey, // لون الأيقونة
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8), // مسافة بين الصورة وبقية المحتوى
              const Align(
                alignment: Alignment.centerRight,
                child: Text('اسم المنتج', // اسم المنتج
                    style: Styles.textStyle16),
              ),
              const SizedBox(height: 4),
              const Spacer(),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.red, // لون الخلفية
                      shape: BoxShape.circle, // جعل الحاوية دائرية
                    ),
                    child: IconButton(
                      onPressed: () {
                        // يمكنك إضافة وظيفة هنا لإضافة المنتج إلى السلة
                      },
                      icon: const Icon(
                        Icons.shopping_cart_outlined, // أيقونة السلة
                        color: Colors.white, // لون الأيقونة داخل الزر
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text('ج.م', // السعر
                      style: Styles.textStyle12
                          .copyWith(color: Colors.black.withOpacity(.7))),
                  const Text('15', // السعر
                      style: Styles.textStyle16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
