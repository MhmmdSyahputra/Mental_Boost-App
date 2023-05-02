import 'package:flutter/material.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/views/ScreenLogin.dart';
import 'package:mentalboost/views/ScreenSuccess.dart';
import 'package:provider/provider.dart';
import 'views/mainMenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ScheduleProvider(),
          )
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primaryColor: Color(0xFF4E37A9),
            ),
            // home: const BottomNavMain()));
            home: const LoginScreen()));
  }
}
