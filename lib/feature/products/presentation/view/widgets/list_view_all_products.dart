import 'package:circle/core/utils/styles.dart';
import 'package:circle/feature/products/presentation/view/widgets/all_productes.dart';
import 'package:flutter/material.dart';

class ListViewAllProducts extends StatelessWidget {
  const ListViewAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: 40,
            width: 129,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffFDF4F4),
            ),
            child: index == 0
                ? const Center(
                    child: Text(
                      'الكل',
                      style: Styles.textStyle12,
                    ),
                  )
                : const AllProductes(
                    text: 'AllProductes',
                  ),
          ),
        );
      },
    );
  }
}
