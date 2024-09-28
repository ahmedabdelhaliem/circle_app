import 'package:circle/core/utils/assets.dart';
import 'package:circle/core/widgets/custombotton.dart';
import 'package:flutter/material.dart';

class AddBasketContainer extends StatelessWidget {
  const AddBasketContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.20), // لون الظل
            offset: const Offset(0, -4), // تحريك الظل لأعلى
            blurRadius: 10, // تحديد مقدار الضبابية في الظل
            spreadRadius: 2, // تحديد مدى انتشار الظل
          ),
        ],
      ),
      height: 69,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('skfmkakaklal dKLd'),
          CustomButton(
            width: 165,
            hight: 45,
            image: Assets.basket,
            name: 'اضف الي السلة',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
