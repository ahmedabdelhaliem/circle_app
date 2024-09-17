import 'package:circle/feature/category/presentation/view/widget/custom_category_section.dart';
import 'package:flutter/material.dart';

class CustomCategorySectionListView extends StatelessWidget {
  const CustomCategorySectionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const CustomCategorySection();
        },
      ),
    );
  }
}
