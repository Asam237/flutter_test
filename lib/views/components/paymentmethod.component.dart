import 'package:ejara_flutter_test/commons/helpers.dart';
import 'package:ejara_flutter_test/commons/palettes.dart';
import 'package:ejara_flutter_test/commons/size.dart';
import 'package:ejara_flutter_test/views/components/button.component.dart';
import 'package:ejara_flutter_test/views/components/menucb.component.dart';
import 'package:ejara_flutter_test/views/components/mytext.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

PaymentMethod(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return FractionallySizedBox(
        heightFactor: 1.5,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))),
          child: Wrap(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Sizes.large, vertical: Sizes.xsmall),
                child: Row(
                  children: [
                    Expanded(
                      child: CText(
                        content: "Select the mobile money method",
                        textColor: Palette.primary,
                        textType: "subTitle",
                      ),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        // Closing the sheet.
                        child: const Icon(Icons.close)),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Color(Palette.separate),
              ),
              CMenuCB(
                title: "Orange Money",
                subTitle: "696 92 09 08",
                icon: Icons.money,
                checkedValue: false,
                onTap: () {
                  unavailable();
                },
              ),
              CMenuCB(
                title: "MTN Mobile Money",
                subTitle: "6 78 89 78 90",
                icon: Icons.money,
                checkedValue: true,
                onTap: () {
                  unavailable();
                },
              ),
              CMenuCB(
                title: "Orange Money",
                subTitle: "690 95 04 90",
                icon: Icons.money,
                checkedValue: false,
                onTap: () {
                  unavailable();
                },
              ),
              Container(
                margin: EdgeInsets.all(
                  Sizes.small,
                ),
                height: 50.0,
                child: CButton(
                  text: "Another mobile money method",
                  typebtn: "primary",
                  mycolor: Palette.blueAccent,
                  myicon: Icons.add,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Sizes.small),
                height: 50.0,
                child: CButton(
                  text: "Continue",
                  mycolor: Palette.primary,
                  typebtn: "primary",
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      );
    },
  );
}
