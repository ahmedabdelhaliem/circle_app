import 'package:circle/core/utils/styles.dart';
import 'package:circle/feature/products/presentation/view/widgets/details_product_body.dart';
import 'package:flutter/material.dart';

class DetailsProduct extends StatelessWidget {
  const DetailsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تفاصيل المنتج',
          style: Styles.textStyle18,
        ),
      ),
      body: const DetailsProductBody(),
    );
  }
}
