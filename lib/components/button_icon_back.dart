import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../constants.dart';

class ButtonIconB extends StatelessWidget {
  const ButtonIconB({
    super.key,
    this.textColor,
    required this.text,
    required this.svgSrc,
    required this.onPressed,
    this.width,
  });

  final Color? textColor;
  final String text, svgSrc;
  final double? width;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize:
            MaterialStatePropertyAll(Size(width ?? 120, defaultPadding * 6)),
        padding: const MaterialStatePropertyAll(
            EdgeInsets.all(defaultPadding * 1.75)),
        elevation: const MaterialStatePropertyAll(0),
        backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
        side: MaterialStatePropertyAll(
            BorderSide(color: textColor ?? const Color(0xffcccccc))),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultPadding)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: textColor ?? grayTxtColor,
              fontSize: defaultPadding * 1.75,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Gap(defaultPadding * 2),
          SvgPicture.asset(
            svgSrc,
            colorFilter: ColorFilter.mode(
              textColor ?? iconColor,
              BlendMode.srcIn,
            ),
          )
        ],
      ),
    );
  }
}
