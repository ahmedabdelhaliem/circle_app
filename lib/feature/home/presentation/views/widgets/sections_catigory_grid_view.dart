import 'package:circle/feature/home/presentation/views/widgets/custom_part.dart';
import 'package:flutter/material.dart';

class SectionsCatigory extends StatelessWidget {
  const SectionsCatigory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 288,
      width: 343,
      child: GridView.builder(
        itemCount: 8,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          return const CustomPart();
        },
      ),
    );
  }
}
