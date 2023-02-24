import 'package:ejara_flutter_test/commons/palettes.dart';
import 'package:ejara_flutter_test/commons/size.dart';
import 'package:ejara_flutter_test/views/components/mytext.component.dart';
import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  final String hint;
  final bool? enabled;
  final IconData? prefix;
  final Widget? suffix;
  final bool obscureText;
  final bool suggestions;
  final bool isLast;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final bool required;
  final TextInputType? type;
  final bool? multiline;
  final int? minLines;
  final String? title;

  const CTextField(
      {Key? key,
      required this.hint,
      this.enabled = true,
      this.prefix,
      this.suffix,
      this.obscureText = false,
      this.suggestions = true,
      this.onChanged,
      this.onSubmitted,
      this.onTap,
      this.isLast = false,
      this.controller,
      this.validator,
      this.required = false,
      this.type,
      this.multiline = false,
      this.minLines,
      this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CText(
        content: title!,
        textColor: Palette.grey,
      ),
      subtitle: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(Palette.grey), width: 1),
          borderRadius: BorderRadius.circular(Sizes.small),
        ),
        margin: EdgeInsets.only(top: Sizes.xsmall),
        child: TextFormField(
          controller: controller,
          enabled: enabled,
          style: const TextStyle(color: Colors.black),
          maxLines: multiline ?? false ? 200 : 1,
          minLines: multiline ?? false ? minLines ?? 3 : 1,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.small),
              // borderSide: BorderSide.,
            ),
            hintText: hint,
            enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.red)),
            filled: true,
            prefixIconColor: Colors.white,
            suffixIcon: suffix,
          ),
          obscureText: obscureText,
          enableSuggestions: suggestions,
          onChanged: onChanged,
          onTap: onTap,
          validator: validator ??
              (required
                  ? (val) => val!.isEmpty ? 'Ce champ est requis.' : null
                  : null),
          onFieldSubmitted: onSubmitted,
          keyboardType: multiline ?? false ? TextInputType.multiline : type,
          textInputAction: multiline ?? false
              ? TextInputAction.newline
              : isLast
                  ? TextInputAction.go
                  : TextInputAction.next,
        ),
      ),
    );
  }
}
