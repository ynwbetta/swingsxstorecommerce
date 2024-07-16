import 'package:flutter/material.dart';
import 'dart:typed_data';

class BarcodeWidget extends StatelessWidget {
  final Uint8List barcodeImage;

  const BarcodeWidget({
    required this.barcodeImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.memory(
      barcodeImage,
      width: 200, // Adjust as needed
      height: 80, // Adjust as needed
    );
  }
}
