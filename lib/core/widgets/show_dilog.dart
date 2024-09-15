import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void showLanguageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      // التحقق من اللغة الحالية
      bool isArabic = context.locale.languageCode == 'ar';
      bool isEnglish = context.locale.languageCode == 'en';

      return AlertDialog(
        backgroundColor: Colors.white, // لون الخلفية
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // النص "اللغة العربية" في اليسار
            const Text(
              'اللغة العربية',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            // أيقونة الخروج في اليمين
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        content: SizedBox(
          height: 200,
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // CheckBox للغة العربية
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        checkColor: Colors.white, // لون علامة الاختيار
                        activeColor:
                            Colors.blue, // لون مربع الاختيار عند التحديد
                        value: isArabic,
                        onChanged: (value) {
                          setState(() {
                            isArabic = true;
                            isEnglish = false;
                          });
                        },
                      ),
                      const Text(
                        'العربية',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // CheckBox للغة الإنجليزية
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        checkColor: Colors.white,
                        activeColor: Colors.blue,
                        value: isEnglish,
                        onChanged: (value) {
                          setState(() {
                            isArabic = false;
                            isEnglish = true;
                          });
                        },
                      ),
                      const Text(
                        'English',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // زر التأكيد لتغيير اللغة
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (isArabic) {
                          context.setLocale(const Locale('ar'));
                        } else if (isEnglish) {
                          context.setLocale(const Locale('en'));
                        }
                        Navigator.pop(context);
                      }, // زر التأكيد
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // لون الزر
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 15,
                        ),
                      ),
                      child: Text('تأكيد'.tr()),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      );
    },
  );
}
