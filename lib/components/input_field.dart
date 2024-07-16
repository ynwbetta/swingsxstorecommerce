import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import '../constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.prefixText,
    this.obscureText = false,
    this.keyboardType,
    this.width,
    this.inputFormatters,
    this.validator,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String? labelText, hintText, prefixText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final double? width;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null && labelText!.isNotEmpty) ...[
          _label(),
          const Gap(defaultPadding),
          _textbox(),
        ] else ...[
          _textbox(),
        ]
      ],
    );
  }

  Text _label() {
    return Text(
      labelText!,
      style: const TextStyle(
        color: Color(0xFF38506E),
        fontSize: defaultPadding * 1.75,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Container _textbox() {
    return Container(
      height: defaultPadding * 6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(defaultPadding),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C101828),
            blurRadius: 2,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: const Color(0xFF6A7C92),
        keyboardType: keyboardType,
        obscureText: obscureText,
        inputFormatters: inputFormatters,
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: defaultPadding * 1.25,
            horizontal: defaultPadding * 1.75,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFCDD3DB)),
            borderRadius: BorderRadius.circular(defaultPadding),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF6A7C92)),
            borderRadius: BorderRadius.circular(defaultPadding),
          ),
          prefixText: prefixText, // Currency symbol as prefix
          prefixStyle: const TextStyle(
            fontSize: defaultPadding * 2,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF6A7C92),
            fontSize: defaultPadding * 2,
          ),
        ),
      ),
    );
  }
}
