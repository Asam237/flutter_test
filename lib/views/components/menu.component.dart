import 'package:ejara_flutter_test/commons/palettes.dart';
import 'package:ejara_flutter_test/commons/size.dart';
import 'package:ejara_flutter_test/views/components/mytext.component.dart';
import 'package:flutter/material.dart';

class CMenu extends StatefulWidget {
  final Function()? onTap;
  final String? title;
  final String? subTitle;
  final IconData? icon;

  const CMenu({this.onTap, this.title, this.subTitle, this.icon, Key? key})
      : super(key: key);

  @override
  State<CMenu> createState() => _CMenuState();
}

class _CMenuState extends State<CMenu> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: ListTile(
        minVerticalPadding: 1.0,
        leading: Container(
          width: Sizes.medium,
          height: Sizes.medium,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(Palette.indigo)),
          child: Icon(widget.icon, color: Color(Palette.blue)),
        ),
        title: CText(
          content: widget.title,
          textColor: Palette.primary,
          textType: "subTitle",
        ),
        subtitle: CText(
          content: widget.title,
          textType: "small",
          textColor: Palette.grey,
        ),
      ),
    );
  }
}
