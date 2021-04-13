import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme_colors.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar(BuildContext context,
    {String title, List<Widget> actions, Widget leading}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style:
          GoogleFonts.merriweather(color: ThemeColors.TextColor, fontSize: 27),
    ),
    leading: leading,
    actions: actions,
  );
}
