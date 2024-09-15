import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onPressed, // إضافة onPressed كمعامل اختياري
  });

  final IconData icon;
  final VoidCallback? onPressed; // تعريف المعامل onPressed

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(60),
        ),
        child: IconButton(
          onPressed: onPressed ??
              () {}, // استخدام onPressed إذا تم تمريره، وإلا تنفيذ إجراء فارغ
          icon: Icon(icon),
        ),
      ),
    );
  }
}
