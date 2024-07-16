import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget socialIcon(String iconPath) {
  return Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),
    ),
    child: SvgPicture.asset(iconPath, color: Colors.white, height: 20),
  );
}
