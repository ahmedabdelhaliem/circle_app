import 'package:circle/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormFieldSignUp extends StatelessWidget {
  final String? hint;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final Widget? prefix;
  final Widget? suffix;

  const CustomTextFormFieldSignUp({
    super.key,
    required this.controller,
    this.hint,
    this.prefix,
    this.suffix,
    this.textInputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 167,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: textInputType,
        maxLength: textInputType == TextInputType.phone ? 11 : null,
        inputFormatters: textInputType == TextInputType.phone
            ? [FilteringTextInputFormatter.digitsOnly]
            : [],
        decoration: InputDecoration(
          label: Text(hint!),
          hintStyle: Styles.textStyle16,
          suffixIcon: suffix,
          prefixIcon: prefix,
          prefixIconConstraints: const BoxConstraints(
            maxHeight: 24,
            maxWidth: 64,
            minWidth: 45,
          ),
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey.shade400), // لون الحدود عند التمكين
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.blue, width: 2), // لون الحدود عند التركيز
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
