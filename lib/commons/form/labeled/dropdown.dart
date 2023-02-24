import 'package:ejara_flutter_test/commons/form/dropdown.dart';
import 'package:ejara_flutter_test/commons/form/labeled/text_field.dart';
import 'package:flutter/material.dart';

class LabeledDropdown extends StatelessWidget {
  final List<DropdownMenuItem> items;
  final dynamic value;
  final void Function(dynamic) onChanged;
  final String label;
  final bool required;

  const LabeledDropdown({
    Key? key,
    required this.items,
    required this.onChanged,
    required this.label,
    this.value,
    this.required = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      label: label,
      required: required,
      child: CDropdown(
        value: value,
        items: items,
        onChanged: onChanged,
      ),
    );
  }
}
