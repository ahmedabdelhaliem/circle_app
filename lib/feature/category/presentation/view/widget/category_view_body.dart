import 'package:circle/feature/category/presentation/view/widget/custom_category_section.dart';
import 'package:circle/feature/category/presentation/view/widget/custom_category_section_list_view.dart';
import 'package:circle/feature/category/presentation/view/widget/descrapition_category.dart';
import 'package:flutter/material.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: const Column(
            children: [CustomCategorySectionListView()],
          ),
        ),
        Container(
          child: const Column(
            children: [DescrapitionCategory(text: 'milk')],
          ),
        ),
      ],
    );
  }
}
