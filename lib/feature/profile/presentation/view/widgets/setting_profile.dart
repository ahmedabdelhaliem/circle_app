import 'package:circle/constant.dart';
import 'package:circle/core/utils/assets.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:circle/core/widgets/show_dilog.dart';
import 'package:circle/feature/profile/presentation/view/widgets/custom_row_setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingProfile extends StatefulWidget {
  const SettingProfile({super.key});

  @override
  State<SettingProfile> createState() => _SettingProfileState();
}

class _SettingProfileState extends State<SettingProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(.3),
      ),
      child: Column(
        children: [
          const Text(
            'الاعدادات',
            style: Styles.textStyle18,
          ),
          const CustomRowSetting(
            text: 'تعديل الحساب',
            image: Assets.userpen,
          ),
          CustomRowSetting(
            text: 'اللغة',
            image: Assets.langauge,
            onTap: () {
              setState(() {
                showLanguageDialog;
              });
            },
          ),
          const CustomRowSetting(
            text: 'تواصل معانا',
            image: Assets.headPhone,
          ),
          const CustomRowSetting(
            text: 'عن التطبيق',
            image: Assets.info,
          ),
          const CustomRowSetting(
            text: 'تقيم التطبيق',
            image: Assets.like,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Image.asset(
                  Assets.delete,
                  height: 36,
                  width: 36,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'حذف حساب',
                  style: Styles.textStyle21.copyWith(color: kRed),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
