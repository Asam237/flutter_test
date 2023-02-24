import 'package:ejara_flutter_test/commons/palettes.dart';
import 'package:ejara_flutter_test/commons/size.dart';
import 'package:ejara_flutter_test/views/components/mytext.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CDropdown extends StatelessWidget {
  final List<DropdownMenuItem> items;
  final dynamic value;
  final String? hint;
  final String? title;
  final void Function(dynamic) onChanged;

  const CDropdown(
      {Key? key,
      required this.items,
      required this.onChanged,
      this.value,
      this.title,
      this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CText(
        content: title!,
        textColor: Palette.grey,
      ),
      subtitle: Container(
        margin: EdgeInsets.only(top: Sizes.xsmall),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Color(Palette.grey), width: 1),
          borderRadius: BorderRadius.circular(Sizes.small),
        ),
        child: DropdownButton(
          value: value,
          items: items,
          hint: Text(hint!),
          onChanged: onChanged,
          isExpanded: true,
          underline: const SizedBox.shrink(),
        ),
      ),
    );
  }
}
