import 'package:flutter/services.dart';

class PercentInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text;
    if (text.isEmpty) {
      return newValue.copyWith(text: '');
    } else {
      int discount = int.tryParse(text) ?? 0;
      if (discount > 100) {
        // If the input is greater than 100, limit it to 100
        discount = 100;
      }
      return newValue.copyWith(
        text: discount.toString(),
        selection: TextSelection.collapsed(offset: discount.toString().length),
      );
    }
  }
}