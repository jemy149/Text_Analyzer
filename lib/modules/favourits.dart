import 'package:flutter/material.dart';
import 'package:sentimental_analyst/models/tweets.dart';
import 'package:sentimental_analyst/modules/home.dart';
import 'package:sentimental_analyst/shared/components/palette.dart';

  List FavoriteTweets = [];



class Favourits extends StatelessWidget {
  const Favourits({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return FavoriteTweets[index];
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 5,
              ),
              itemCount: FavoriteTweets.length,
            ),
        ),
      ),
    );
  }
}