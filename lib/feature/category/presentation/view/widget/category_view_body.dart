import 'package:circle/feature/category/presentation/view/widget/custom_category_section_list_view.dart';
import 'package:circle/feature/category/presentation/view/widget/list_view_des_cat.dart';
import 'package:flutter/material.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, top: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCategorySectionListView(),
          ListViewDesCat(),
        ],
      ),
    );
  }
}
