import 'package:ejara_flutter_test/api/response.api.dart';
import 'package:ejara_flutter_test/api/services.api.dart';
import 'package:ejara_flutter_test/commons/palettes.dart';
import 'package:ejara_flutter_test/commons/size.dart';
import 'package:ejara_flutter_test/views/components/button.component.dart';
import 'package:ejara_flutter_test/views/components/form/pass_field.dart';
import 'package:ejara_flutter_test/views/components/form/text_field.dart';
import 'package:ejara_flutter_test/views/components/mytext.component.dart';
import 'package:ejara_flutter_test/views/screens/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController logController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  ResponseApi<Map<String, dynamic>>? _apiResponse;
  bool? _loading = false;

  bool obscureText = true;

  void _login() async {
    if (logController.text == "" || passwordController.text == "") {
      var snackBar = SnackBar(content: Text("Please fill in all fields"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      setState(() {
        _loading = true;
      });

      var data = {
        'log': logController.text,
        'password': passwordController.text
      };

      _apiResponse = await ServicesApi().login(data, 'auth/login');
      if (_apiResponse!.error == false) {
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        localStorage.setString('isConnected', "true");
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => HomeScreen(
                      name: _apiResponse!.data!["data"]!["username"],
                      token: _apiResponse!.data!["token"]!,
                    )));
        setState(() {
          _loading = false;
        });
      }

      if (_apiResponse!.error == true) {
        var snackBar =
            SnackBar(content: Text(_apiResponse!.errorMessage.toString()));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        setState(() {
          _loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(Sizes.small),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50.0),
              Container(
                color: Colors.white24,
                child: Column(
                  children: [
                    Container(
                      child: Center(
                          child: CText(
                        textColor: Palette.primary,
                        content: "ejara",
                        textType: "title",
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30.0),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 30.0),
                      color: Colors.white,
                      child: Form(
                        child: Column(
                          children: [
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Welcome",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ))),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CTextField(
                              title: 'username',
                              controller: logController,
                              hint: '',
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            CPassField(
                              title: 'password',
                              hint: '',
                              controller: passwordController,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Forgot password",
                                    style: TextStyle(
                                        color: Color(Palette.primary),
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            // ignore: deprecated_member_use
                            Container(
                              width: double.infinity,
                              height: Sizes.xlarge,
                              child: CButton(
                                typebtn: "primary",
                                mycolor: Palette.primary,
                                onTap: _loading! ? () => null : _login,
                                text: "Login",
                                // isLoading: _loading!
                              ),
                            ),
                            //_isLoading ? CircularProgressIndicator(
                            //) : SizedBox(height: 0.5,),
                            _loading!
                                ? CircularProgressIndicator(
                                    color: Color(Palette.primary),
                                  )
                                : SizedBox(
                                    height: 0.5,
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
