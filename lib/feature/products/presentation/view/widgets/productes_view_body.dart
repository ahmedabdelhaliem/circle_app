import 'package:circle/feature/products/presentation/view/widgets/List_View_des_product.dart';
import 'package:circle/feature/products/presentation/view/widgets/category_section.dart';
import 'package:circle/feature/products/presentation/view/widgets/custom_search_text_feild.dart';
import 'package:circle/feature/products/presentation/view/widgets/element_product_grad_view.dart';
import 'package:circle/feature/products/presentation/view/widgets/list_view_all_products.dart';
import 'package:flutter/material.dart';

class ProductesViewBody extends StatelessWidget {
  const ProductesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: ListView(
        children: const [
          CustomSearchTextFeild(),
          ListViewAllProducts(),
          ListViewDesProduct(),
          Spacer(),
          ElementProductGradView()
        ],
      ),
    );
  }
}
