import 'package:circle/core/utils/styles.dart';
import 'package:circle/feature/products/presentation/view/widgets/productes_view_body.dart';
import 'package:flutter/material.dart';

class ProductesView extends StatelessWidget {
  const ProductesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'المنتجات',
          style: Styles.textStyle18,
        ),
      ),
      body: const ProductesViewBody(),
    );
  }
}
