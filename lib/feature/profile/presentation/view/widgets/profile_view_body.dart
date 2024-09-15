import 'package:circle/core/utils/styles.dart';
import 'package:circle/feature/profile/presentation/view/widgets/custom_Exit_button.dart';
import 'package:circle/feature/profile/presentation/view/widgets/custom_row_icon.dart';
import 'package:circle/feature/profile/presentation/view/widgets/image_profile.dart';
import 'package:circle/feature/profile/presentation/view/widgets/setting_profile.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: ListView(
        children: const [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'المزيد',
              style: Styles.textStyle16,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ImageProfile(),
          SizedBox(
            height: 16,
          ),
          CustomRowIcon(),
          SizedBox(
            height: 16,
          ),
          SettingProfile(),
          SizedBox(
            height: 16,
          ),
          CustomExitButton(),
        ],
      ),
    );
  }
}
