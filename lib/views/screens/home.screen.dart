import 'package:ejara_flutter_test/views/components/my.component.dart';
import 'package:flutter/material.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              CText(
                content: "Hello Title",
                textType: "title",
                textColor: 0xff000000,
              ),
              CText(
                content: "Hello SubTitle",
                textType: "subTitle",
                textColor: 0xff000000,
              ),
              CText(
                content: "Hello Title",
                textColor: 0xff000000,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
