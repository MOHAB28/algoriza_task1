import 'package:flutter/material.dart';
import 'core/resources/font_manager.dart';
import 'core/resources/styles_manager.dart';
import 'screens/login/view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: getBoldStyle(
            color: Colors.black,
            fontSize: FontSize.s25,
          ),
          headlineLarge: getSemiBoldStyle(
            color: Colors.black,
            fontSize: FontSize.s50
          ),
          headlineMedium: getRegularStyle(
            color: Colors.grey,
            fontSize: FontSize.s16,
          ),
        ),
      ),
      home:  LoginView(),
    );
  }
}
