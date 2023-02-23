import 'package:ejara_flutter_test/commons/palettes.dart';
import 'package:ejara_flutter_test/commons/size.dart';
import 'package:ejara_flutter_test/views/components/menu.component.dart';
import 'package:ejara_flutter_test/views/components/mytext.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(Palette.bg),
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
                    content: "Choose a payment method",
                    textType: "title",
                    textColor: Palette.primary,
                  )),
              SizedBox(
                height: Sizes.xsmall,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Sizes.small),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, .5), //(x,y)
                          blurRadius: 1.0,
                        )
                      ]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Sizes.small,
                      ),
                      Container(
                        width: Sizes.xlarge,
                        height: Sizes.xlarge,
                        decoration: BoxDecoration(
                          color: Color(Palette.blueAccent),
                          borderRadius: BorderRadius.circular(Sizes.xsmall),
                        ),
                        child: Icon(
                          Icons.folder_open_rounded,
                          color: Colors.white,
                          size: Sizes.small,
                        ),
                      ),
                      SizedBox(height: Sizes.xsmall),
                      CText(
                        content: "Ejara Flex",
                        textColor: Palette.grey,
                      ),
                      SizedBox(height: Sizes.small),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CText(
                            content: "20,000",
                            textColor: Palette.primary,
                            textType: "title",
                          ),
                          CText(
                            content: "FCFA",
                            textColor: Palette.grey,
                            textType: "titlelight",
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: Sizes.small),
                        width: MediaQuery.of(context).size.width,
                        height: 0.4,
                        color: Color(Palette.separate),
                      ),
                      ListTile(
                        leading: CText(
                          textColor: Palette.grey,
                          content: "Earnings per day",
                        ),
                        trailing: CText(
                          textColor: Palette.blueAccent,
                          content: "10,000 FCFA",
                        ),
                      )
                    ],
                  )),
              SizedBox(height: Sizes.small),
              CText(
                content: "Select a payment methods",
                textColor: Palette.primary,
                textType: "subTitle",
              ),
              SizedBox(height: Sizes.xsmall),
              CMenu(
                title: "Cash payment",
                subTitle: "Fees: Offer",
                icon: Icons.money,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                color: Color(Palette.indigo),
              ),
              CMenu(
                title: "Mobile money",
                subTitle: "Fees: 200FCFA",
                icon: Icons.phone_android_rounded,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                color: Color(Palette.indigo),
              ),
              CMenu(
                title: "Bank transfer",
                subTitle: "Fees: Variable",
                icon: Icons.food_bank_outlined,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                color: Color(Palette.indigo),
              ),
              CMenu(
                title: "Credit Card",
                subTitle: "Fees: Variable",
                icon: Icons.credit_card,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                color: Color(Palette.indigo),
              ),
              CMenu(
                title: "Crypto-currency",
                subTitle: "Fees: ",
                icon: Icons.enhanced_encryption_rounded,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                color: Color(Palette.indigo),
              ),
              CMenu(
                title: "Cash payment",
                subTitle: "Feers: Offer",
                icon: Icons.money,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                color: Color(Palette.indigo),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
