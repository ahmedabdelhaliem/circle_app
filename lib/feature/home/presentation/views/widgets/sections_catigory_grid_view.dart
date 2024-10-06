import 'package:circle/feature/home/domain/entity/category_entity/category_entity.dart';
import 'package:circle/feature/home/presentation/views/widgets/custom_part.dart';
import 'package:flutter/material.dart';

class SectionsCatigory extends StatelessWidget {
  const SectionsCatigory({super.key, required this.item});
  final List<CategoryEntity> item;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 288,
      width: 343,
      child: GridView.builder(
        itemCount: item.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          return CustomPart(
            image: item[index].imageCategory!,
            title: item[index].titleCategory,
          );
        },
      ),
    );
  }
}
