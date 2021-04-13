import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/componetns/button/custom_button.dart';
import 'package:flutter_application_1/constants/theme_colors.dart';
import 'package:flutter_application_1/screens/home/home.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          color: ThemeColors.BackgroundColor),
      padding: EdgeInsets.all(38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DelayedDisplay(
            delay: Duration(milliseconds: 500),
            child: Text(
              "Hong Kong\n" + "Awesome Trips",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: ThemeColors.TextColor),
            ),
          ),
          SizedBox(height: 25),
          DelayedDisplay(
            delay: Duration(milliseconds: 800),
            child: Text(
              'Hong Kong welcomes with an iconic skyline, a legendary kitchen, and lush, protected nature where rare birds and colorful traditions thrive.',
              style: TextStyle(fontSize: 16, color: ThemeColors.TextColor),
            ),
          ),
          SizedBox(height: 40),
          DelayedDisplay(
            delay: Duration(milliseconds: 1000),
            child: CustomButton(
              tapEvent: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
          )
        ],
      ),
    );
  }
}
