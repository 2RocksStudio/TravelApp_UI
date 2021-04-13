import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme_colors.dart';

class CustomButton extends StatelessWidget {
  final Function tapEvent;
  final String type;
  final Icon icon;
  const CustomButton({Key key, this.tapEvent, this.type, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (type == "icon") {
      return IconButton(icon: icon, onPressed: tapEvent);
    }
    return InkWell(
      onTap: tapEvent,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: ThemeColors.PrimaryColor),
        // width: 200,
        height: 50,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Start Now!",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Icon(
                Icons.arrow_right,
                size: 28,
                color: ThemeColors.Icon,
              )
            ],
          ),
        ),
      ),
    );
  }
}
