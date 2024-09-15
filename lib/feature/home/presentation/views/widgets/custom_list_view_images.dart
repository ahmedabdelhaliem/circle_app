import 'package:circle/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewImages extends StatelessWidget {
  const CustomListViewImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 171.5,
        width: 343,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: CustomShowImage(),
            );
          },
        ),
      ),
    );
  }
}

class CustomShowImage extends StatelessWidget {
  const CustomShowImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 171.5,
        width: 343,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Image.asset(Assets.show));
  }
}
