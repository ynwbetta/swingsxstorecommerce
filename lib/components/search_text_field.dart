import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.35,
      child: TextFormField(
        controller: controller,
        cursorColor: const Color(0xFF6A7C92),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(
            defaultPadding * 2,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFCCCCCC)),
            borderRadius: BorderRadius.circular(defaultPadding),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF6A7C92)),
            borderRadius: BorderRadius.circular(defaultPadding),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              left: defaultPadding * 1.25,
              right: defaultPadding,
            ),
            child: SvgPicture.asset('assets/icons/search.svg',
                height: 16,
                width: 16,
                colorFilter: const ColorFilter.mode(
                  Color(0xFF101429),
                  BlendMode.srcIn,
                )),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: const Color(0xFF101429).withOpacity(0.7),
            fontSize: defaultPadding * 2,
          ),
        ),
      ),
    );
  }
}
