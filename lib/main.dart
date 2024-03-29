import 'package:flutter/material.dart';
import 'package:mentalboost/providers/DoktersProvider.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/providers/UsersProviders.dart';
import 'package:mentalboost/providers/questionQuizProvider.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/signin/ScreenLogin.dart';
import 'package:mentalboost/views/splashScreen.dart';
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
          ),
          ChangeNotifierProvider(
            create: (context) => UsersProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => QuestionQuizProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => DoktersProvider(),
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primaryColor: ColorConstants.primaryColor,
            ),
            // home: const FormProfileScreen()));
            home: SplashScreen()));
  }
}
