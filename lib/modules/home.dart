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
    HomeScreen(),
    Favourits(),
    SearchScreen(),
    CustomeDrawer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: kPrimaryColor.withOpacity(0.35),
        backgroundColor: kPrimaryLightColor,
        key: _bottomNavigationKey,
        buttonBackgroundColor: Colors.pink,
        height: 60,
        // ignore: prefer_const_literals_to_create_immutables
        items: <Widget>[
          Icon(Icons.home, size: 35, color: kPrimaryColor),
          Icon(Icons.favorite, size: 35, color: kPrimaryColor),
          Icon(Icons.saved_search_sharp, size: 35, color: kPrimaryColor),
          Icon(Icons.list, size: 35, color: kPrimaryColor),
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
