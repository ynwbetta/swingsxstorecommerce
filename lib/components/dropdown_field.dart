import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ecommerce/constants.dart';

class DropdownField extends StatefulWidget {
  const DropdownField({
    super.key,
    this.labelText,
    this.width,
    this.paddingLeft,
    this.hintText,
    this.color,
    this.backgroundColor,
    required this.options,
    required this.onSelectionChanged,
    this.svgPath,
  });

  final String? labelText, hintText;
  final double? width, paddingLeft;
  final Color? color, backgroundColor;
  final List options;
  final Function(String) onSelectionChanged;
  final String? svgPath;

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  String? selectOption;
  List options = [];
  final OverlayPortalController _tooltipController = OverlayPortalController();
  final _link = LayerLink();
  double? _buttonWidth;

  @override
  void initState() {
    super.initState();
    defaultOption();
    options = widget.options;
  }

  void defaultOption() {
    selectOption = widget.hintText ?? widget.options.first;
  }

  void onSelectedOptionChanged(String option) {
    setState(() {
      selectOption = option;
      _tooltipController.toggle();
      widget.onSelectionChanged(selectOption!);
    });
  }

  void onTap() {
    _tooltipController.toggle();
    _buttonWidth = context.size?.width;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null && widget.labelText!.isNotEmpty) ...[
          _labelText(),
          const Gap(defaultPadding),
          _overlayPortal(),
        ] else ...[
          _overlayPortal(),
        ]
      ],
    );
  }

  Text _labelText() {
    return Text(
      widget.labelText!,
      style: const TextStyle(
        color: Color(0xFF38506E),
        fontSize: defaultPadding * 1.75,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  CompositedTransformTarget _overlayPortal() {
    return CompositedTransformTarget(
      link: _link,
      child: OverlayPortal(
        controller: _tooltipController,
        overlayChildBuilder: (context) => CompositedTransformFollower(
          link: _link,
          targetAnchor: Alignment.bottomLeft,
          child: Align(
            alignment: Alignment.topLeft,
            child: _dropdownOptions(),
          ),
        ),
        child: _optionsContainer(),
      ),
    );
  }

  InkWell _optionsContainer() {
    return InkWell(
      onTap: onTap,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      child: Container(
        height: defaultPadding * 6,
        width: widget.width,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(
            horizontal: widget.paddingLeft ?? defaultPadding * 1.75),
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(defaultPadding),
          border: Border.all(color: widget.color ?? const Color(0xFFCDD3DB)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0C101828),
              blurRadius: 2,
              offset: Offset(0, 1),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectOption!,
              style: TextStyle(
                color: widget.color ?? const Color(0xFF6A7C92),
                fontSize: defaultPadding * 2,
              ),
            ),
            SvgPicture.asset(
              widget.svgPath ?? '/icons/arrow-down.svg',
              height: 20,
              width: 20,
            ),
          ],
        ),
      ),
    );
  }

  Padding _dropdownOptions() {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding * 0.25),
      child: SingleChildScrollView(
        child: Container(
          width: _buttonWidth,
          constraints: const BoxConstraints(maxHeight: 150),
          decoration: BoxDecoration(
            color: widget.backgroundColor ?? Colors.white,
            borderRadius: BorderRadius.circular(defaultPadding),
            border: Border.all(color: widget.color ?? const Color(0xFFCDD3DB)),
            boxShadow: const [
              BoxShadow(
                color: Color(0x0C101828),
                blurRadius: 2,
                offset: Offset(0, 1),
              )
            ],
          ),
          child: ListView(
            shrinkWrap: true,
            children: widget.options
                .map(
                  (e) => ListTile(
                    hoverColor: Colors.transparent,
                    title: Text(
                      e,
                      style: TextStyle(
                        color: widget.color ?? const Color(0xFF6A7C92),
                        fontSize: defaultPadding * 2,
                      ),
                    ),
                    onTap: () => onSelectedOptionChanged(e),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
