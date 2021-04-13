import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme_colors.dart';
import 'package:flutter_application_1/screens/welcome/welcome.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: ThemeColors.PrimaryColor,
          scaffoldBackgroundColor: ThemeColors.BackgroundColor,
          textTheme:
              GoogleFonts.merriweatherTextTheme(Theme.of(context).textTheme)),
      home: WelcomeScreen(),
    );
  }
}
