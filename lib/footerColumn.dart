import 'package:flutter/material.dart';

Widget footerColumn(String title, List<String> items) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 20),
      ...items.map((item) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(item, style: const TextStyle(color: Colors.white70)),
          )),
    ],
  );
}
