import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hint;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final Widget? prefix;
  final Widget? suffix;
  final TextAlign? textAlign;

  const CustomTextFormField(
      {super.key,
      required this.controller,
      this.hint,
      this.prefix,
      this.suffix,
      this.textInputType = TextInputType.text,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
        textAlign: textAlign ?? TextAlign.start,
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: textInputType,
        maxLength: textInputType == TextInputType.phone ? 11 : null,
        inputFormatters: textInputType == TextInputType.phone
            ? [FilteringTextInputFormatter.digitsOnly]
            : [],
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
          suffixIcon: suffix,
          prefixIcon: prefix,
          prefixIconConstraints:
              const BoxConstraints(maxHeight: 24, maxWidth: 64, minWidth: 45),
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffEEEEEE)),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
