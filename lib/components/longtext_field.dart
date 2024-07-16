import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import '../constants.dart';

class LongTextField extends StatelessWidget {
  const LongTextField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.width,
    this.inputFormatters,
    this.validator,
    this.maxLines,
  });

  final TextEditingController? controller;
  final String? labelText, hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final double? width;
  final int? maxLines;
  final List<TextInputFormatter?>? inputFormatters;
  final FormFieldValidator<String?>? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText!,
          style: const TextStyle(
            color: Color(0xFF38506E),
            fontSize: defaultPadding * 1.75,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(defaultPadding),
        Container(
          width: width!,
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
            inputFormatters: const [],
            validator: validator,
            maxLines: maxLines ?? 5,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: defaultPadding * 2.5,
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
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Color(0xFF6A7C92),
                fontSize: defaultPadding * 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
