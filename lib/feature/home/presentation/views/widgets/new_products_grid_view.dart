import 'package:flutter/material.dart';
import 'new_products_grid_view_item.dart'; // تأكد من مسار الاستيراد الصحيح

class NewProductsGridView extends StatelessWidget {
  const NewProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 850,
      width: 343,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عرض شبكي بعمودين
          childAspectRatio: 0.9, // لضبط نسبة العرض إلى الارتفاع
        ),
        itemCount: 10, // عدد العناصر
        itemBuilder: (context, index) {
          return const NewProductsGridViewItem();
        },
      ),
    );
  }
}
