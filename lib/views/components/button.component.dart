import 'package:ejara_flutter_test/commons/palettes.dart';
import 'package:ejara_flutter_test/commons/size.dart';
import 'package:ejara_flutter_test/views/components/mytext.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CButton extends StatefulWidget {
  final Function()? onTap;
  final String? text;
  final String? typebtn;
  final IconData? myicon;
  final int mycolor;

  const CButton(
      {Key? key,
      this.onTap,
      this.text,
      required this.mycolor,
      this.typebtn,
      this.myicon})
      : super(key: key);

  @override
  State<CButton> createState() => _CButtonState();
}

class _CButtonState extends State<CButton> {
  @override
  Widget build(BuildContext context) {
    if (widget.typebtn == "primary") {
      return InkWell(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
              color: Color(widget.mycolor),
              borderRadius: BorderRadius.circular(Sizes.small)),
          child: Center(
            child: CText(
              content: widget.text,
              textColor: 0xffffffff,
            ),
          ),
        ),
      );
    }
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color(widget.mycolor),
            borderRadius: BorderRadius.circular(Sizes.small)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.myicon, color: Colors.white, size: 50.0),
            CText(
              content: widget.text,
              textColor: Palette.primary,
            ),
          ],
        ),
      ),
    );
  }
}
