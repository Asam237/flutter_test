import 'package:flutter/material.dart';

class CText extends StatefulWidget {
  final String? content;
  final String? textType;
  final int? textColor;

  const CText({Key? key, this.content, this.textType, this.textColor})
      : super(key: key);

  @override
  State<CText> createState() => _CTextState();
}

class _CTextState extends State<CText> {
  @override
  Widget build(BuildContext context) {
    if (widget.textType == "title") {
      return Text(
        widget.content.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 24,
            fontFamily: 'Neuehaas',
            fontWeight: FontWeight.w800,
            color: Color(widget.textColor!.toInt())),
      );
    }
    if (widget.textType == "small") {
      return Text(
        widget.content.toString(),
        style: TextStyle(
            fontSize: 12,
            fontFamily: 'Neuehaas',
            fontWeight: FontWeight.w500,
            color: Color(widget.textColor!.toInt())),
      );
    }
    if (widget.textType == "titlelight") {
      return Text(
        widget.content.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 24,
            fontFamily: 'Neuehaas',
            fontWeight: FontWeight.w500,
            color: Color(widget.textColor!.toInt())),
      );
    }
    if (widget.textType == "subTitle") {
      return Text(
        widget.content.toString(),
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: 'Neuehaas',
            color: Color(widget.textColor!.toInt())),
      );
    }
    return Text(
      widget.content.toString(),
      style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          fontFamily: 'Neuehaas',
          color: Color(widget.textColor!.toInt())),
    );
  }
}
