import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class PinCodeWidget extends StatelessWidget {
  final Function(String) textSubmit;
  final TextEditingController? controller;
  final int? pinLength;
  final FocusNode? focus;
  final double? pinBoxWidth;

  const PinCodeWidget({
    super.key,
    this.controller,
    this.pinLength,
    this.focus,
    this.pinBoxWidth,
    required this.textSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PinCodeTextField(
        autofocus: true,
        highlight: true,
        focusNode: focus,
        controller: controller,
        maxLength: pinLength!,
        pinBoxHeight: MediaQuery.of(context).size.width * 0.12,
        pinBoxWidth: pinBoxWidth ?? MediaQuery.of(context).size.width * 0.12,
        pinBoxRadius: 8.0,
        pinBoxBorderWidth: 1.5,
        wrapAlignment: WrapAlignment.center,
        pinTextAnimatedSwitcherDuration: const Duration(milliseconds: 300),
        keyboardType: TextInputType.number,
        pinTextStyle: const TextStyle(fontSize: 14, color: Colors.red),
        onTextChanged: (text) {},
        defaultBorderColor: const Color(0xffEEEEEE),
        hasTextBorderColor: const Color(0xffEEEEEE),
        highlightColor: const Color(0xffEEEEEE),
        pinBoxDecoration: ProvidedPinBoxDecoration.underlinedPinBoxDecoration,
        onDone: (text) => textSubmit(text),
      ),
    );
  }
}
