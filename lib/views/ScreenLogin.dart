import 'package:flutter/material.dart';
import 'package:mentalboost/providers/UserLoginProvider.dart';
import 'package:mentalboost/utils/MyGlobalFunction.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/ScreenRegistrasi.dart';
import 'package:mentalboost/views/mainMenu.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _inputEmailUserController =
      TextEditingController();
  final TextEditingController _InputPasswordUserController =
      TextEditingController();

  void checkLogin(String email, String password) {
    print('Tombol ditekan!');
  }

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<UserLoginProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30,
          ),
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height - 230,
              child: Column(
                children: [
                  Container(
                      child: Text(
                    'Login',
                    style: TextStyle(fontSize: 30),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: ColorConstants.primaryColor))),
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(color: ColorConstants.primaryColor),
                            )),
                      ),
                      Container(
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RegistrasiScreen()));
                            },
                            child: Text(
                              'Registrasi',
                              style: TextStyle(
                                  color: ColorConstants.textColorDark),
                            )),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: TextField(
                      controller: _inputEmailUserController,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Email Adress',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      ),
                    ),
                  )),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: TextField(
                      controller: _InputPasswordUserController,
                      obscureText: mounted,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: 'Password',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      ),
                    ),
                  )),
                  Container(
                      width: 200,
                      height: 90,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              final isFound = prov.userLoginList.any((user) =>
                                  user.email ==
                                      _inputEmailUserController.text &&
                                  user.password ==
                                      _InputPasswordUserController.text);
                              if (isFound) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomNavMain()),
                                );
                              } else {
                                Mynotif('Your Password or Email is incorrect');
                              }
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                primary: ColorConstants.primaryColor),
                          ))),
                  Container(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Image.asset(
                                  'assets/images/logo-f.png',
                                  width: 30,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Image.asset(
                                  'assets/images/logo-G.png',
                                  width: 50,
                                ),
                              ),
                            ],
                          ))),
                ],
              ),
            ),
            Container(
                height: 200,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/ilusration-login.png',
                  width: double.infinity, // Menutupi seluruh lebar layar
                  fit: BoxFit.cover,
                )),
          ]),
        ),
      ),
    );
  }
}
