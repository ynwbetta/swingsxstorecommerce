import 'package:flutter/material.dart';

import '../constants.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    super.key,
    this.initalText,
    this.linkText,
    this.destinationRoute,
  });

  final String? initalText, linkText;
  final Widget? destinationRoute;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: defaultPadding * 1.75,
              fontFamily: 'Inter',
            ),
            children: [
              TextSpan(
                text: initalText!,
                style: const TextStyle(color: Color(0xFF667084)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: IntrinsicHeight(
            child: IntrinsicWidth(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => destinationRoute!),
                  );
                },
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
                    overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                child: Text(
                  linkText!,
                  style: const TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontWeight: FontWeight.w600,
                    fontSize: defaultPadding * 1.75,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
