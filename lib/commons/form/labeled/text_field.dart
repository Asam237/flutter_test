import 'package:ejara_flutter_test/commons/size.dart';
import 'package:flutter/material.dart';

import '../text_field.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final TextEditingController? controller;
  final bool required;
  final Widget? child;
  final Color? iconColor;
  final bool? enabled;
  final TextInputType? type;
  final bool? multiline;
  final int? minLines;

  const LabeledTextField({
    Key? key,
    this.label = '',
    this.hint = '',
    this.controller,
    this.isPassword = false,
    this.required = false,
    this.child,
    this.iconColor,
    this.enabled = true,
    this.type,
    this.multiline,
    this.minLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Wrap(
      runSpacing: 7,
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: label,
            style: theme.textTheme.titleLarge!.copyWith(fontSize: Sizes.small),
          ),
        ]))
      ],
    );
  }
}
