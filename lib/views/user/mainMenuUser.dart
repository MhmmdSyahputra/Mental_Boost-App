import 'package:flutter/material.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/providers/UsersProviders.dart';
import 'package:mentalboost/utils/MyGlobalFunction.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/signin/ScreenLogin.dart';
import 'package:mentalboost/views/user/home/ScreenHome.dart';
import 'package:mentalboost/views/user/konseling/ScreenKonseling.dart';
import 'package:mentalboost/views/user/meditasi/ScreenMeditasi.dart';
import 'package:mentalboost/views/user/profile/ScreenProfil.dart';
import 'package:mentalboost/views/user/quiz/ScreenQuiz.dart';
import 'package:mentalboost/views/user/schedule/MySchedule.dart';
import 'package:mentalboost/views/user/tips/ScreenTips.dart';
import 'package:provider/provider.dart';

class BottomNavMain extends StatefulWidget {
  const BottomNavMain({super.key});

  @override
  State<BottomNavMain> createState() => _BottomNavMainState();
}

class _BottomNavMainState extends State<BottomNavMain> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Meditasi'),
    Text('Quiz'),
    Text('Koseling'),
    Text('Tips'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provIdUser = Provider.of<UserLoginProvider>(context);
    final user = Provider.of<UsersProvider>(context)
        .getUserById(provIdUser.idUserDoLogin);

    Widget body = _widgetOptions.elementAt(_selectedIndex);
    switch (_selectedIndex) {
      case 0:
        body = HomeScreen();
        break;
      case 1:
        body = MeditasiScreen();
        break;
      case 2:
        body = QuizScreen();
        break;
      case 3:
        body = KonselingScreen();
        break;
      case 4:
        body = TipsScreen();
        break;
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.primaryColor,
          toolbarHeight: 60,
          title: GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProfileScreen())),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: getProfile(user.profile, user.gender)),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(child: Text('${user.username}')),
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyScheduleScreen()));
                },
                icon: Icon(Icons.event_note_sharp)),
            PopupMenuButton<MenuItem>(
                onSelected: (value) {
                  if (value == MenuItem.Profil) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ));
                  } else if (value == MenuItem.Pengaturan) {
                  } else if (value == MenuItem.Logout) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                      (route) => false,
                    );
                  }
                },
                itemBuilder: (context) => [
                      PopupMenuItem(
                          value: MenuItem.Profil, child: Text('Profil')),
                      PopupMenuItem(
                          value: MenuItem.Pengaturan,
                          child: Text('Pengaturan')),
                      PopupMenuItem(
                          value: MenuItem.Logout, child: Text('Logout')),
                    ])
          ],
        ),
        body: body,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined),
              label: 'Meditasi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined),
              label: 'Quiz',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded),
              label: 'Konseling',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tips_and_updates_outlined),
              label: 'Tips',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor:
              Colors.black, // ubah warna ikon yang dipilih menjadi hitam
          unselectedItemColor: Colors.black.withOpacity(
              0.6), // ubah warna ikon yang tidak dipilih menjadi hitam transparan
        ),
      ),
    );
  }
}

enum MenuItem {
  Profil,
  Pengaturan,
  Logout,
}
