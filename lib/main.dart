import 'package:flutter/material.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/ScreenFormProfile.dart';
import 'package:mentalboost/views/ScreenLogin.dart';
import 'package:provider/provider.dart';

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
          ),
          ChangeNotifierProvider(
            create: (context) => UserLoginProvider(),
          )
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primaryColor: ColorConstants.primaryColor,
            ),
            // home: const FormProfileScreen()));
            home: const LoginScreen()));
  }
}
