import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import '../constants.dart';

class InputFieldScan extends StatefulWidget {
  const InputFieldScan({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.width,
    this.inputFormatters,
    this.validator,
    this.onScan,
    this.onChanged,
    this.onTapItem, // New callback for item tap
    this.dropdownItems,
  });

  final TextEditingController? controller;
  final String? labelText, hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final double? width;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String?>? validator;
  final Function()? onScan;
  final void Function(String)? onChanged;
  final void Function(String)? onTapItem; // New callback for item tap
  final List<String>? dropdownItems;

  @override
  State<InputFieldScan> createState() => _InputFieldScanState();
}

class _InputFieldScanState extends State<InputFieldScan> {
  String _filterText = '';
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null && widget.labelText!.isNotEmpty) ...[
          _label(),
          const Gap(defaultPadding),
          _textbox(),
        ] else ...[
          _textbox(),
        ]
      ],
    );
  }

  Text _label() {
    return Text(
      widget.labelText!,
      style: const TextStyle(
        color: Color(0xFF38506E),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Container _textbox() {
    return Container(
      height: 48, // Adjust height as needed
      width: widget.width!,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(8), // Adjust border radius as needed
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C101828),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: TextField(
        autofocus: true,
        controller: widget.controller,
        cursorColor: const Color(0xFF6A7C92),
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        inputFormatters: widget.inputFormatters,
        onChanged: (value) {
          setState(() {
            _filterText = value;
          });
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
          _updateOverlay(); // Call _updateOverlay() here
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12, // Adjust padding as needed
            horizontal: 16, // Adjust padding as needed
          ),
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF6A7C92),
            fontSize: 16, // Adjust font size as needed
          ),
        ),
      ),
    );
  }

  void _updateOverlay() {
    bool textMatchesItem = false;
    if (_filterText.isNotEmpty) {
      // Check if _filterText is not a number
      final isNotNumber = !RegExp(r'^[0-9]+$').hasMatch(_filterText);
      if (isNotNumber) {
        textMatchesItem = widget.dropdownItems!.any((item) {
          final List<String> itemParts = item.split(' - ');
          final String productName = itemParts[0];
          final String productId = itemParts[1];
          return productName == _filterText || productId == _filterText;
        });
        if (!textMatchesItem) {
          if (_overlayEntry == null || !_overlayEntry!.mounted) {
            _overlayEntry = _createOverlayEntry();
            Overlay.of(context).insert(_overlayEntry!);
          }
        } else {
          if (_overlayEntry != null && _overlayEntry!.mounted) {
            _overlayEntry!.remove();
            _overlayEntry = null;
          }
        }
      } else {
        // Remove overlay if it exists and _filterText is a number
        if (_overlayEntry != null && _overlayEntry!.mounted) {
          _overlayEntry!.remove();
          _overlayEntry = null;
        }
      }
    } else {
      // Remove overlay if _filterText is empty
      if (_overlayEntry != null && _overlayEntry!.mounted) {
        _overlayEntry!.remove();
        _overlayEntry = null;
      }
    }
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox textField = context.findRenderObject() as RenderBox;
    Offset textFieldOffset = textField.localToGlobal(Offset.zero);

    // Calculate maximum height for the overlay
    double availableHeight = MediaQuery.of(context).size.height -
        textFieldOffset.dy -
        textField.size.height;
    double maxHeight = availableHeight > 200 ? 200 : availableHeight;

    return OverlayEntry(
      builder: (context) => Positioned(
        top: textFieldOffset.dy +
            textField.size.height, // Position below the text field
        left: textFieldOffset.dx,
        width: textField.size.width,
        child: Material(
          elevation: 4,
          child: Container(
            constraints: BoxConstraints(
                maxHeight: maxHeight), // Limit height of the overlay
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min, // Allow column to shrink
                children: widget.dropdownItems!
                    .where((item) =>
                        item.toLowerCase().contains(_filterText.toLowerCase()))
                    .map((item) {
                  final List<String> itemParts = item.split(' - ');
                  final String productName = itemParts[0];
                  final String productId = itemParts[1];
                  return ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Product ID: $productId',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        widget.controller!.text = productName;
                        _filterText = '';
                      });
                      _overlayEntry?.remove();
                      _overlayEntry = null;
                      if (widget.onTapItem != null) {
                        widget.onTapItem!(
                          item, // Trigger onTapItem callback with the selected item
                        );
                      }
                    },
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
