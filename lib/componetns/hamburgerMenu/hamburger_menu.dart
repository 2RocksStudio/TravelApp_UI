import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme_colors.dart';

class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: ClipOval(
            child: Icon(
          Icons.menu,
          color: ThemeColors.TextColor,
        )),
        onPressed: () {});
  }
}
