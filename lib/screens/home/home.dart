import 'package:flutter/material.dart';
import 'package:flutter_application_1/componetns/appbar/appbar.dart';
import 'package:flutter_application_1/componetns/bottomNavBar/bottom_nav_bar.dart';
import 'package:flutter_application_1/componetns/hamburgerMenu/hamburger_menu.dart';
import 'package:flutter_application_1/componetns/placeSlider/place_slider.dart';
import 'package:flutter_application_1/componetns/userAvatar/user_avatar.dart';
import 'package:flutter_application_1/screens/home/components/categoris.dart';
import 'package:flutter_application_1/screens/home/components/gird_view_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: buildAppBar(context,
            title: 'Explore',
            leading: HamburgerMenu(),
            actions: [UserAvatar()]),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavBar(),
        body: SingleChildScrollView(
            child: Column(children: [
          Categories(),
          PlaceSlider(),
          buildYouMayLikeIt(),
          buildGirdViewList()
        ])));
  }

  Widget buildYouMayLikeIt() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            'You may like it',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                'More',
                style: TextStyle(fontSize: 14),
              ))
        ],
      ),
    );
  }

  Widget buildGirdViewList() {
    return GirdViewList();
  }
}
