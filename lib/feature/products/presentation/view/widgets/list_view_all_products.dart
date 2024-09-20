import 'package:circle/core/utils/styles.dart';
import 'package:circle/feature/products/presentation/view/widgets/all_productes.dart';
import 'package:flutter/material.dart';

class ListViewAllProducts extends StatelessWidget {
  const ListViewAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                    height: 40,
                    width: 129,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffFDF4F4),
                    ),
                    child: const Center(
                      child: Text(
                        'الكل',
                        style: Styles.textStyle12,
                      ),
                    )));
          }
          return const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: AllProductes(text: 'منتحات الالبان'));
        },
      ),
    );
  }
}
