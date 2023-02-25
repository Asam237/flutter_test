import 'package:ejara_flutter_test/commons/palettes.dart';
import 'package:ejara_flutter_test/commons/size.dart';
import 'package:ejara_flutter_test/views/components/form/dropdown.dart';
import 'package:ejara_flutter_test/views/components/form/text_field.dart';
import 'package:ejara_flutter_test/views/components/mytext.component.dart';
import 'package:flutter/material.dart';

import '../components/button.component.dart';

class AddPaymentScreen extends StatefulWidget {
  const AddPaymentScreen({Key? key}) : super(key: key);

  @override
  State<AddPaymentScreen> createState() => _AddPaymentScreenState();
}

class _AddPaymentScreenState extends State<AddPaymentScreen> {
  // List<Map> items = [
  //   {"name": "Mobile Money", "numero": "7438739847"},
  //   {"name": "Orange Money", "numero": "7438739847"},
  // ];
  List<String> operations = ["Orange Money", "Mobile Money"];
  String _dropDownValue = "Orange Money";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(Palette.bg),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(Sizes.small),
        height: Sizes.xlarge,
        child: CButton(
          text: "Continue",
          mycolor: Palette.primary,
          typebtn: "primary",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(Sizes.small),
        child: ListView(
          children: [
            SizedBox(
              height: Sizes.medium,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: Sizes.xlarge),
                alignment: Alignment.center,
                child: CText(
                  content: "New mobile money",
                  textType: "title",
                  textColor: Palette.primary,
                )),
            SizedBox(
              height: Sizes.xmedium,
            ),
            CDropdown(
              title: "Choose the mobile operator",
              hint: _dropDownValue,
              items: operations.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _dropDownValue = newValue!;
                });
              },
            ),
            SizedBox(
              height: Sizes.small,
            ),
            CTextField(title: "Phone number", hint: "694 94 89 09"),
            SizedBox(
              height: Sizes.small,
            ),
            CTextField(title: "Full name", hint: "King"),
          ],
        ),
      ),
    ));
  }
}
