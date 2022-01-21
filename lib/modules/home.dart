import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sentimental_analyst/modules/search.dart';
import 'package:sentimental_analyst/shared/components/components.dart';

import 'package:sentimental_analyst/shared/components/palette.dart';
import 'package:sentimental_analyst/models/tweets.dart';

import 'favourits.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List widgetOptions = [
    SearchScreen(),
    HomeScreen(),
    Favourits(),

    // CustomeDrawer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 300),
        color: kPrimaryColor.withOpacity(0.30),
        backgroundColor: kPrimaryLightColor,
        key: _bottomNavigationKey,
        buttonBackgroundColor: Colors.white,
        height: 60,
        // ignore: prefer_const_literals_to_create_immutables
        items: <Widget>[
          Icon(Icons.home, size: 35, color: kPrimaryColor),
          Icon(Icons.textsms_outlined, size: 35, color: kPrimaryColor),
          Icon(Icons.save_outlined, size: 35, color: kPrimaryColor),
          // Icon(Icons.list, size: 35, color: kPrimaryColor),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: widgetOptions.elementAt(selectedIndex),
    );
  }
}
