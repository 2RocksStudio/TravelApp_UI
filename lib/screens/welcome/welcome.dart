import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/welcome/components/top_banner.dart';
import 'package:flutter_application_1/screens/welcome/components/welcome_title.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; //this is the way to get device screen size
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            TopBanner(),
            Positioned(
                top: size.height * .45,
                right: 0,
                left: 0,
                bottom: 0,
                child: WelcomeTitle())
          ],
        ),
      ),
    );
  }
}
