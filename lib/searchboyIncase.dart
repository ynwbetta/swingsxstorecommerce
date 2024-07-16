import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class SearchBoy extends StatelessWidget {
  const SearchBoy({
    super.key,
    required this.hintText,
    required this.controller,
  });

  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
          ),
          width: width * 0.35,
          height: 40,
          child: TextFormField(
            controller: controller,
            cursorColor: const Color(0xFF6A7C92),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(
                0,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFCCCCCC)),
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
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color(0xffFFC107),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
          ),
          width: 42,
          height: 40,
          child: Center(child: SvgPicture.asset('assets/icons/search.svg')),
        )
      ],
    );
  }
}
