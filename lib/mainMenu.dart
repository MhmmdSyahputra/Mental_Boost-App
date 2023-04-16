import 'package:flutter/material.dart';
import 'package:mentalboost/views/ScreenHome.dart';
// import 'beranda.dart';
// import 'profile.dart';
// import 'upload.dart';

class BottonNavMain extends StatefulWidget {
  const BottonNavMain({super.key});

  @override
  State<BottonNavMain> createState() => _BottonNavMainState();
}

class _BottonNavMainState extends State<BottonNavMain> {
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
    Widget body = _widgetOptions.elementAt(_selectedIndex);
    switch (_selectedIndex) {
      case 0:
        body = HomeScreen();
        break;
      case 1:
        //body = SearchPage();
        break;
      case 2:
        // body = Upload();
        break;
      case 3:
        //body = NotificationPage();
        break;
      case 4:
        // body = ProfilePage();
        break;
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text("Novita")
            ],
          ),
        ),
        body: body,
        bottomNavigationBar: BottomNavigationBar(
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
