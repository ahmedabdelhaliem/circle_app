import 'package:circle/feature/products/presentation/view/widgets/category_section.dart';
import 'package:flutter/material.dart';

class ElementProductGradView extends StatelessWidget {
  const ElementProductGradView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 2,
      child: GridView.builder(
        itemCount: 60,
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // لضبط نسبة العرض إلى الارتفاع
        ),
        itemBuilder: (BuildContext context, int index) {
          return const CategorySectionProduct();
        },
      ),
    );
  }
}
