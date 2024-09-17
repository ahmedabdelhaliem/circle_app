import 'package:circle/feature/category/presentation/view/widget/descrapition_category.dart';
import 'package:flutter/material.dart';

class ListViewDescategory extends StatelessWidget {
  const ListViewDescategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .7,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return const DescrapitionCategory(
            text: 'Milk',
          );
        },
      ),
    );
  }
}
