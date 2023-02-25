import 'package:ejara_flutter_test/views/components/form/text_field.dart';
import 'package:flutter/material.dart';

class CPassField extends StatefulWidget {
  final String hint;
  final String? title;
  final bool? isLast;
  final IconData? prefix;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Color? iconColor;

  const CPassField(
      {Key? key,
      required this.hint,
      this.isLast = false,
      this.onChanged,
      this.onSubmitted,
      this.validator,
      this.prefix,
      this.controller,
      this.iconColor,
      this.title})
      : super(key: key);

  @override
  State<CPassField> createState() => _CPassFieldState();
}

class _CPassFieldState extends State<CPassField> {
  bool see = false;

  @override
  Widget build(BuildContext context) {
    return CTextField(
      title: widget.title,
      type: TextInputType.visiblePassword,
      hint: widget.hint,
      controller: widget.controller,
      obscureText: !see,
      prefix: widget.prefix,
      validator: widget.validator,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      suffix: IconButton(
        onPressed: () {
          setState(() {
            see = !see;
          });
        },
        icon: Icon(
          see ? Icons.visibility : Icons.visibility_off,
          color: widget.iconColor ?? Colors.grey,
        ),
      ),
    );
  }
}
