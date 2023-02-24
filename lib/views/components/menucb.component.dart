import 'package:ejara_flutter_test/commons/palettes.dart';
import 'package:ejara_flutter_test/commons/size.dart';
import 'package:ejara_flutter_test/views/components/mytext.component.dart';
import 'package:flutter/material.dart';

class CMenuCB extends StatefulWidget {
  final Function()? onTap;
  final String? title;
  final String? subTitle;
  final IconData? icon;
  bool? checkedValue;

  CMenuCB(
      {this.onTap,
      this.title,
      this.subTitle,
      this.icon,
      this.checkedValue,
      Key? key})
      : super(key: key);

  @override
  State<CMenuCB> createState() => _CMenuCBState();
}

class _CMenuCBState extends State<CMenuCB> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: Sizes.xsmall, horizontal: Sizes.xsmall),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Sizes.xsmall),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, .5), //(x,y)
                blurRadius: 1.0,
              )
            ]),
        child: CheckboxListTile(
          checkboxShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: CText(
            content: widget.title,
            textColor: Palette.primary,
            textType: "subTitle",
          ),
          subtitle: CText(
            content: widget.subTitle,
            textType: "small",
            textColor: Palette.grey,
          ),
          value: widget.checkedValue,
          onChanged: (newValue) {
            setState(() {
              widget.checkedValue = newValue;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}
