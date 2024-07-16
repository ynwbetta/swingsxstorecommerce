import 'package:flutter/material.dart';

import '../constants.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    super.key,
    required this.buttontext,
    required this.onPressed,
    required this.color,
    required this.bdcolor,
    this.fontsize,
    required this.fontcolor,
    this.width,
    this.height,
  });

  final String buttontext;
  final VoidCallback onPressed;
  final double? width;
  final double? fontsize;
  final double? height;
  final Color color;
  final Color fontcolor;
  final Color bdcolor;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        onHover: (_) => setState(() => isHovered = !isHovered),
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(
              Size(widget.width ?? 165, widget.height ?? 40)),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(
            isHovered ? const Color(0xFF616161) : widget.color,
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
              horizontal: defaultPadding * 2,
              vertical: defaultPadding * 1.25,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultPadding),
              side: BorderSide(color: widget.bdcolor),
            ),
          ),
        ),
        child: Center(
          child: Text(
            widget.buttontext,
            style: TextStyle(
              fontFamily: 'Inter',
              color: widget.fontcolor,
              fontSize: widget.fontsize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
