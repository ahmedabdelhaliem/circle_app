import 'package:circle/core/utils/styles.dart';
import 'package:circle/core/widgets/show_dilog.dart';
import 'package:flutter/cupertino.dart';

class CustomRowSetting extends StatelessWidget {
  const CustomRowSetting({
    super.key,
    required this.text,
    required this.image,
    this.onTap,
  });

  final String text;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: GestureDetector(
        onTap:
            onTap ?? () => showLanguageDialog(context), // استدعاء نافذة الحوار
        child: Row(
          children: [
            SizedBox(
              height: 36,
              width: 36,
              child: Image.asset(image),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: Styles.textStyle21,
            ),
            const Spacer(),
            const Icon(CupertinoIcons.chevron_back),
          ],
        ),
      ),
    );
  }
}
