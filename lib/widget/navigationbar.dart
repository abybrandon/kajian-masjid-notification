// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:kkp/login/login.dart';
import 'package:kkp/login/splashpage.dart';
import 'package:kkp/main.dart';
import 'package:kkp/page/feedpage.dart';
import 'package:kkp/page/homepage.dart';
import 'package:kkp/page/profile.dart';
import 'package:kkp/page/profilepage.dart';
import 'package:kkp/theme.dart';
import 'package:kkp/widget/contact.dart';

class NavigatorScreen extends StatefulWidget {
  @override
  _NavigatorScreenState createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List<Widget> _listPages = [HomePage(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          // ignore: prefer_const_literals_to_create_immutables
          items: <Widget>[
            Icon(
              Icons.home_outlined,
              size: 30,
              color: whiteColor,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: whiteColor,
            ),
          ],
          color: bgBlue,

          buttonBackgroundColor: bgBlue,
          backgroundColor: whiteColor,
          animationCurve: Curves.ease,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: _listPages[_page]);
  }
}
