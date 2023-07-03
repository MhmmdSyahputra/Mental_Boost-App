import 'package:flutter/material.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/providers/UsersProviders.dart';
import 'package:mentalboost/utils/MyGlobalFunction.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/profile/ScreenFormProfile.dart';
import 'package:mentalboost/views/signup/ScreenRegistrasi.dart';
import 'package:mentalboost/views/mainMenu.dart';
import 'package:provider/provider.dart';

class LoginScreentes extends StatefulWidget {
  @override
  State<LoginScreentes> createState() => _LoginScreentesState();
}

class _LoginScreentesState extends State<LoginScreentes> {
  final TextEditingController _inputEmailUserController =
      TextEditingController();
  final TextEditingController _InputPasswordUserController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provLogin = Provider.of<UserLoginProvider>(context);
    final provUsers = Provider.of<UsersProvider>(context);

    return Scaffold(
      body: DefaultTabController(
        length: 2, // Jumlah tab (Login dan Registrasi)
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 230,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TabBar(
                          tabs: [
                            Tab(
                              text: 'Login',
                            ),
                            Tab(
                              text: 'Registrasi',
                            ),
                          ],
                          labelColor: ColorConstants.primaryColor,
                          unselectedLabelColor: ColorConstants.textColorDark,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TabBarView(
                          children: [
                            // Halaman Login
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: TextField(
                                    controller: _inputEmailUserController,
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.email),
                                      hintText: 'Email Adress',
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: TextField(
                                    controller: _InputPasswordUserController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.lock),
                                      hintText: 'Password',
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // ...
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      primary: ColorConstants.primaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // Halaman Registrasi
                            Column(
                              children: [
                                // ... Konten Registrasi
                              ],
                            ),
                          ],
                        ),
                      ),
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
