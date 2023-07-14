import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/providers/UsersProviders.dart';
import 'package:mentalboost/utils/MyGlobalFunction.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/signin/ScreenLogin.dart';
import 'package:mentalboost/views/user/about/screenAbout.dart';
import 'package:mentalboost/views/user/profile/ScreenFormProfile.dart';
import 'package:mentalboost/views/user/schedule/MySchedule.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

bool valLoading = false;

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final provIdUser = Provider.of<UserLoginProvider>(context);
    final user = Provider.of<UsersProvider>(context)
        .getUserById(provIdUser.idUserDoLogin);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        title: Text('Profil'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 220,
              child: Column(
                children: [
                  valLoading
                      ? SpinKitFadingCircle(
                          color: ColorConstants.primaryColor,
                          size: 50.0,
                        )
                      : SizedBox(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: ColorConstants.boxColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FormProfileScreen(
                                      data: user,
                                      tipe: 'edit',
                                    )))
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: getProfile(user.profile, user.gender),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                '${user.username}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                            Container(
                              child: Text(
                                '${getOld(user.dateOfBirth)} Tahun',
                              ),
                            ),
                          ],
                        )),
                        GestureDetector(
                          onTap: () => {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FormProfileScreen(
                                      data: user,
                                      tipe: 'edit',
                                    )))
                          },
                          child: Container(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(Icons.edit),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: ColorConstants.boxColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  child: Text('How Are You Today?'),
                                ),
                                Container(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 120,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: ElevatedButton(
                                              onPressed: () async {
                                                setState(() {
                                                  valLoading = true;
                                                });
                                                String response =
                                                    await getOpenAIResponse(
                                                        'baik');
                                                setState(() {
                                                  valLoading = false;
                                                  showCustomDialog2(
                                                      context,
                                                      'Good',
                                                      '${response}',
                                                      Colors.orange,
                                                      Icon(
                                                        Icons.warning,
                                                        color: ColorConstants
                                                            .textColorLight,
                                                      ));
                                                });
                                              },
                                              child: Text('Good'),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)))),
                                        ),
                                        Container(
                                          width: 120,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: ElevatedButton(
                                              onPressed: () async {
                                                setState(() {
                                                  valLoading = true;
                                                });
                                                String response =
                                                    await getOpenAIResponse(
                                                        'tidak baik');
                                                setState(() {
                                                  valLoading = false;
                                                  showCustomDialog2(
                                                      context,
                                                      'Not Good',
                                                      '${response}',
                                                      Colors.orange,
                                                      Icon(
                                                        Icons.warning,
                                                        color: ColorConstants
                                                            .textColorLight,
                                                      ));
                                                });
                                              },
                                              child: Text('Not Good'),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.red,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)))),
                                        ),
                                      ]),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  Container(
                    child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        childAspectRatio: 1.8,
                        children: [
                          GestureDetector(
                            onTap: () => {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MyScheduleScreen()))
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: ColorConstants.boxColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 12,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Row(
                                          // mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.calendar_month),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              'Shedule',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MyScheduleScreen()));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: ColorConstants.boxColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 12,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Row(
                                          // mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.update),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              'History',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                                color: ColorConstants.boxColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 12,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Row(
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.dark_mode),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Theme',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          Switch(
                                            // This bool value toggles the switch.
                                            value: false,
                                            activeColor: Colors.red,
                                            onChanged: (bool value) {
                                              // This is called when the user toggles the switch.
                                              setState(() {
                                                // light = value;
                                              });
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => AboutScreen())),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: ColorConstants.boxColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 12,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Row(
                                          // mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.help),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              'About',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                  (route) => false,
                );
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        color: ColorConstants.boxColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 12,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20.0)),
                    width: 150,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -20,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 12,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(100)),
                      width: 70,
                      height: 70,
                      child: Icon(
                        Icons.logout,
                        color: ColorConstants.textColorLight,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<String> getOpenAIResponse(String input) async {
  final response = await http.post(
      Uri.parse('https://api.openai.com/v1/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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' // Ganti dengan API Key Anda
      },
      body:
          '{"prompt": "hidup saya sedang $input. bisa berikan motivasi dengan singkat dan padat agar saya lebih semangat jaani hidup", "max_tokens": 200, "model": "text-davinci-003"}');

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    final botResponse = jsonResponse['choices'][0]['text'];
    return botResponse;
    // return response.body;
  } else {
    return 'Error: ${response.statusCode}';
  }
}
