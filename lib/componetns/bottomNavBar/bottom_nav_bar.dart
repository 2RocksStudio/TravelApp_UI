import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets padding = MediaQuery.of(context).padding;
    return Container(
      height: 60,
      width: double.infinity,
      margin:
          EdgeInsets.only(top: 10, bottom: padding.bottom, left: 10, right: 10),
      padding: EdgeInsets.only(
        left: 40,
        right: 40,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                offset: const Offset(0, 3),
                color: Colors.black.withAlpha(20))
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            icon: Icons.home,
            isActive: true,
          ),
          NavItem(
            icon: Icons.calendar_today,
            isActive: false,
          ),
          NavItem(
            icon: Icons.search,
            isActive: false,
          ),
          NavItem(
            icon: Icons.verified_user,
            isActive: false,
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key key, @required this.icon, @required this.isActive})
      : super(key: key);

  final IconData icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Icon(
              icon,
              color: isActive
                  ? ThemeColors.PrimaryColor
                  : Colors.grey.withOpacity(0.6),
            ),
          ),
          Container(
            height: 4,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isActive ? ThemeColors.PrimaryColor : Colors.transparent,
            ),
          ),
        ],
      ),
      onTap: () {},
    );
  }
}
