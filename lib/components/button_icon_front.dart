import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonIconF extends StatefulWidget {
  const ButtonIconF(
      {super.key,
      required this.svgSrc,
      required this.text,
      required this.bgroundColor,
      required this.onPressed,
      this.paddingHorizon,
      this.paddingVertical,
      this.fontSize,
      this.width,
      this.height});

  final String svgSrc, text;
  final double? paddingHorizon, width, height, fontSize, paddingVertical;
  final Color bgroundColor;
  final VoidCallback onPressed;

  @override
  State<ButtonIconF> createState() => _ButtonIconState();
}

class _ButtonIconState extends State<ButtonIconF> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: widget.onPressed,
      onHover: (_) => setState(() => onHover = !onHover),
      style: ButtonStyle(
        side: MaterialStatePropertyAll(
          BorderSide(color: onHover ? widget.bgroundColor : Colors.transparent),
        ),
        elevation: const MaterialStatePropertyAll(0),
        fixedSize: MaterialStateProperty.all(
            Size(widget.width ?? 120, widget.height ?? 48)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultPadding))),
        backgroundColor: MaterialStatePropertyAll(
          onHover ? Colors.white : widget.bgroundColor,
        ),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            vertical: widget.paddingVertical ?? defaultPadding * 1.25,
            horizontal: widget.paddingHorizon ?? defaultPadding * 3,
          ),
        ),
      ),
      icon: SvgPicture.asset(
        widget.svgSrc,
        colorFilter: ColorFilter.mode(
          onHover ? widget.bgroundColor : Colors.white,
          BlendMode.srcIn,
        ),
      ),
      label: Text(
        widget.text,
        style: TextStyle(
          color: onHover ? widget.bgroundColor : Colors.white,
          fontSize: widget.fontSize ?? defaultPadding * 1.75,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
