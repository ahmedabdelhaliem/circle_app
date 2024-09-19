import 'package:circle/feature/category/presentation/view/widget/custom_category_section.dart';
import 'package:flutter/material.dart';

class CustomCategorySectionListView extends StatelessWidget {
  const CustomCategorySectionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102,
      padding: const EdgeInsets.only(right: 16, left: 8, top: 8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
        color: Color(0xffF9F9F9),
      ),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: CustomCategorySection(),
          );
        },
      ),
    );
  }
}
