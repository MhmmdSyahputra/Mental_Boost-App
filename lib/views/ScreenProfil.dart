import 'package:flutter/material.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/MySchedule.dart';
import 'package:mentalboost/views/ScreenFormProfile.dart';
import 'package:mentalboost/views/ScreenLogin.dart';
import 'package:provider/provider.dart';

import '../providers/LoginRegisProvider.dart';
import '../providers/UsersProviders.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

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
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
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
                                '${user.dateOfBirth}',
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
                                              onPressed: () => {},
                                              child: Text('Good'),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.red,
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
                                              onPressed: () => {},
                                              child: Text('Not Good'),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.green,
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
                        ]),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
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
