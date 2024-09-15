import 'package:circle/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Image.asset(
            Assets.icon,
            height: 124,
            width: 124,
          ),
          Positioned(
            bottom: 4,
            top: 90,
            left: 97,
            child: Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), // دائري
                color: Colors.red, // لون الخلفية الأحمر
              ),
              padding: const EdgeInsets.all(4),
              child: const Icon(
                FontAwesomeIcons.add,
                size: 14,
                color: Colors.white, // لون الأيقونة البيضاء
              ),
            ),
          )
        ],
      ),
    );
  }
}
