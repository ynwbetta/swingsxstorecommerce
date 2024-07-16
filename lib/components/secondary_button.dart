import 'package:flutter/material.dart';

import '../constants.dart';

class SecondaryButton extends StatefulWidget {
  const SecondaryButton({
    super.key,
    required this.buttontext,
    required this.onPressed,
    this.width,
    this.height,
    this.padding,
  });

  final String buttontext;
  final VoidCallback onPressed;
  final double? width, height, padding;

  @override
  State<SecondaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<SecondaryButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      onHover: (_) => setState(() => isHovered = !isHovered),
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(
              Size(widget.width ?? 100, widget.height ?? 48)),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(
              isHovered ? const Color(0xFFCCCCCC) : Colors.white),
          padding:
              MaterialStateProperty.all(EdgeInsets.all(widget.padding ?? 1)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultPadding),
            ),
          ),
          side: MaterialStateProperty.all(BorderSide(
            width: isHovered ? 0 : 1,
            color: isHovered ? Colors.transparent : primaryColor,
          ))),
      child: Text(
        widget.buttontext,
        style: TextStyle(
          color: isHovered ? const Color(0xff121212) : primaryColor,
          fontSize: defaultPadding * 2,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
