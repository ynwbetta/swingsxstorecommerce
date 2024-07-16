import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../constants.dart';

class ButtonIconBVar extends StatefulWidget {
  const ButtonIconBVar({
    super.key,
    required this.bgroundColor,
    required this.text,
    required this.svgSrc,
    required this.onPressed,
    this.width,
  });

  final Color bgroundColor;
  final String text, svgSrc;
  final double? width;
  final VoidCallback onPressed;

  @override
  State<ButtonIconBVar> createState() => _ButtonIconBVarState();
}

class _ButtonIconBVarState extends State<ButtonIconBVar> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      onHover: (_) => setState(() => onHover = !onHover),
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(
            Size(widget.width ?? 120, defaultPadding * 6)),
        padding: const MaterialStatePropertyAll(
            EdgeInsets.all(defaultPadding * 1.75)),
        elevation: const MaterialStatePropertyAll(0),
        backgroundColor: MaterialStatePropertyAll(
            onHover ? Colors.transparent : widget.bgroundColor),
        side: MaterialStatePropertyAll(
          BorderSide(color: onHover ? widget.bgroundColor : Colors.transparent),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultPadding)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.text,
            style: TextStyle(
              color: onHover ? widget.bgroundColor : Colors.white,
              fontSize: defaultPadding * 1.75,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Gap(defaultPadding * 2),
          SvgPicture.asset(
            widget.svgSrc,
            colorFilter: ColorFilter.mode(
              onHover ? widget.bgroundColor : Colors.white,
              BlendMode.srcIn,
            ),
          )
        ],
      ),
    );
  }
}
