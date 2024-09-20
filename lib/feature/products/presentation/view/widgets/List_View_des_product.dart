import 'package:circle/feature/products/presentation/view/widgets/des_product.dart';
import 'package:flutter/material.dart';

class ListViewDesProduct extends StatelessWidget {
  const ListViewDesProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: DescrapitionProduct(),
          );
        },
      ),
    );
  }
}
