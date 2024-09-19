import 'package:circle/feature/category/presentation/view/widget/descrapition_category.dart';
import 'package:flutter/material.dart';

class ListViewDesCat extends StatelessWidget {
  const ListViewDesCat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 150,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: ListView.separated(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return const DescrapitionCategory();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 8,
          );
        },
      ),
    );
  }
}
