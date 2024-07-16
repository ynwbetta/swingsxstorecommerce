import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../constants.dart';

class DateField extends StatefulWidget {
  const DateField({
    super.key,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.onDateSelected,
    this.labelText,
    this.paddingHorizon,
    this.width,
    this.color,
  });

  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final Function(DateTime)? onDateSelected;
  final String? labelText;
  final Color? color;
  final double? width, paddingHorizon;

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = _stripTimeFromDate(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.labelText!.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _label(),
                  const Gap(defaultPadding),
                  _datePickerField(),
                ],
              )
            : Column(
                children: [
                  _datePickerField(),
                ],
              ),
      ],
    );
  }

  Text _label() {
    return Text(
      widget.labelText!,
      style: const TextStyle(
        color: Color(0xFF38506E),
        fontSize: defaultPadding * 1.75,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  InkWell _datePickerField() {
    return InkWell(
      onTap: _selectDate,
      child: Container(
        height: defaultPadding * 6,
        width: widget.width ?? 200,
        padding: EdgeInsets.symmetric(
          vertical: defaultPadding,
          horizontal: widget.paddingHorizon ?? defaultPadding,
        ),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(defaultPadding),
            border: Border.all(color: widget.color ?? grayTxtColor5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              DateFormat('yyyy-MM-dd')
                  .format(_selectedDate), // Format date as desired
              style: TextStyle(
                fontSize: defaultPadding * 1.75,
                color: widget.color ?? grayTxtColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SvgPicture.asset(
              'assets/icons/calendar.svg',
              colorFilter: ColorFilter.mode(
                widget.color ?? iconColor,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: widget.firstDate ?? DateTime(1900),
      lastDate: widget.lastDate ?? DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = _stripTimeFromDate(picked);
      });
      if (widget.onDateSelected != null) {
        widget.onDateSelected!(_selectedDate);
      }
    }
  }

  DateTime _stripTimeFromDate(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }
}
