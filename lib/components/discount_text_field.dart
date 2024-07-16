import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import '../constants.dart';
import 'percentFormatter.dart';

class DiscountInputField extends StatelessWidget {
  const DiscountInputField({
    super.key,
    this.controller,
    this.discountContoller,
    this.labelText,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.width,
    this.inputFormatters,
    this.validator,
  });

  final TextEditingController? controller, discountContoller;
  final String? labelText, hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final double? width;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelText!.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _label(),
                  const Gap(defaultPadding),
                  _textbox(),
                ],
              )
            : Column(
                children: [
                  _textbox(),
                ],
              ),
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
      // width: width,
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
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              cursorColor: const Color(0xFF6A7C92),
              keyboardType: keyboardType,
              obscureText: obscureText,
              inputFormatters: inputFormatters,
              validator: validator,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: defaultPadding * 1.25,
                  horizontal: defaultPadding * 1.75,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFCDD3DB)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6A7C92)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                ),
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Color(0xFF6A7C92),
                  fontSize: defaultPadding * 2,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 130, // Adjust width as needed
            child: TextFormField(
              controller: discountContoller,
              cursorColor: const Color(0xFF6A7C92),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                PercentInputFormatter(),
              ],
              decoration: InputDecoration(
                suffix: SvgPicture.asset(
                  'assets/icons/percentage.svg',
                  height: 14,
                  width: 14,
                  colorFilter: const ColorFilter.mode(
                      Color(0xFF6A7C92), BlendMode.srcIn),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: defaultPadding * 1.25,
                  horizontal: defaultPadding * 1.75,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFCDD3DB)),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6A7C92)),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                ),
                hintText: 'Discount',
                hintStyle: const TextStyle(
                  color: Color(0xFF6A7C92),
                  fontSize: defaultPadding * 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
