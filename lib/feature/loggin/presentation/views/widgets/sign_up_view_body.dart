import 'package:circle/core/utils/styles.dart';
import 'package:circle/core/widgets/Custom_Check_box.dart';
import 'package:circle/feature/loggin/presentation/views/widgets/custom_profile_image.dart';
import 'package:circle/feature/loggin/presentation/views/widgets/custom_text_field_sign_up.dart';
import 'package:circle/feature/loggin/presentation/views/widgets/cutom_elevation_botton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'انشاء حساب',
                style: Styles.textStyle18,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(FontAwesomeIcons.arrowRight),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomProfileImage(),
          SizedBox(
            height: 60, // زيادة ارتفاع الحقول لجعلها مناسبة أكثر
            child: Row(
              children: [
                Expanded(
                  child: CustomTextFormFieldSignUp(
                    controller: controller,
                    hint: "الاسم الاخير", // مثال لنص تلميحي
                  ),
                ),
                const SizedBox(width: 10), // إضافة مسافة بين الحقول
                Expanded(
                  child: CustomTextFormFieldSignUp(
                    controller: controller,
                    hint: "الاسم الاول",
                    // مثال لنص تلميحي
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 33), // إضافة مسافة بين الحقول

          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'مدعو بواسطة مستخدم؟',
                style: Styles.textStyle12,
              ),
              CustomCheckBox()
            ],
          ),
          const Spacer(),
          CustomButtom(
            name: 'تاكيد',
            onPressed: () {},
          ),
          const SizedBox(height: 33), // إضافة مسافة بين الحقول
        ],
      ),
    );
  }
}
