import 'package:circle/constant.dart';
import 'package:circle/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Stack(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                Assets.profile, // تأكد من مسار الصورة الصحيح
                width: 96,
                height: 96,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 70,
            right: 74,
            child: Container(
              padding: const EdgeInsets.all(
                  4), // حشوة داخل الحاوية لجعل الدائرة أكبر قليلاً
              decoration: const BoxDecoration(
                color: Colors.white, // خلفية بيضاء
                shape: BoxShape.circle, // جعل الحاوية دائرية
              ),
              child: const Icon(
                FontAwesomeIcons.userEdit,
                color: kRed, // أيقونة القلب
              ),
            ),
          ),
        ],
      ),
    );
  }
}
