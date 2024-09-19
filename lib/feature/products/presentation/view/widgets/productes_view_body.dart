import 'package:circle/feature/products/presentation/view/widgets/all_productes.dart';
import 'package:circle/feature/products/presentation/view/widgets/custom_search_text_feild.dart';
import 'package:flutter/material.dart';

class ProductesViewBody extends StatelessWidget {
  const ProductesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          CustomSearchTextFeild(),
          AllProductes(
            text: 'منتجات الالبان',
          )
        ],
      ),
    );
  }
}
