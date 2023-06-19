import 'package:flutter/material.dart';
import 'package:mentalboost/model/LoginModel.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/utils/MyGlobalFunction.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/signin/ScreenLogin.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class RegistrasiScreen extends StatefulWidget {
  const RegistrasiScreen({super.key});

  @override
  State<RegistrasiScreen> createState() => _RegistrasiScreenState();
}

class _RegistrasiScreenState extends State<RegistrasiScreen> {
  final TextEditingController _inputUsernameController =
      TextEditingController();
  final TextEditingController _inputEmailUserController =
      TextEditingController();
  final TextEditingController _inputNumberController = TextEditingController();
  final TextEditingController _inputPasswordUserController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<UserLoginProvider>(context);
    var uuid = Uuid();

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
                    'Sign Up',
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
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: ColorConstants.textColorDark),
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: ColorConstants.primaryColor))),
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RegistrasiScreen()));
                            },
                            child: Text(
                              'Registrasi',
                              style:
                                  TextStyle(color: ColorConstants.primaryColor),
                            )),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    child: TextField(
                      controller: _inputUsernameController,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Username',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      ),
                    ),
                  )),
                  Container(
                      child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    child: TextField(
                      controller: _inputNumberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone_android_outlined),
                        hintText: 'Number Phone',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      ),
                    ),
                  )),
                  Container(
                      child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    child: TextField(
                      controller: _inputPasswordUserController,
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
                              if (_inputUsernameController.text != '' ||
                                  _inputEmailUserController.text != '' ||
                                  _inputNumberController.text != '' ||
                                  _inputPasswordUserController.text != '') {
                                prov.register(UserLoginModel(
                                    id: uuid.v1(),
                                    username: _inputUsernameController.text,
                                    email: _inputEmailUserController.text,
                                    noHp: _inputNumberController.text,
                                    password:
                                        _inputPasswordUserController.text));

                                myNotif('Your Account is Successfully Created',
                                    Colors.green);
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                              } else {
                                myNotif('Failed, Your Data is Not Complete',
                                    Colors.red);
                              }
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                primary: ColorConstants.primaryColor),
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
