import 'package:circle/core/utils/assets.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:circle/feature/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomIconButton(icon: Icons.shopping_cart),
        const CustomIconButton(icon: Icons.notifications),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 14, right: 16, bottom: 14),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    'اهلا وسهلا',
                    style: Styles.textStyle12.copyWith(color: Colors.grey),
                  ),
                  const Text(
                    'احمد مصطفى',
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              const SizedBox(width: 8), // فصل بين النص والصورة
              SizedBox(
                height: 20,
                width: 30,
                child: Image.asset(
                  Assets.icon,
                  // ارتفاع الصورة
                  fit: BoxFit.fill, // ضبط كيفية ملاءمة الصورة في الإطار
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
